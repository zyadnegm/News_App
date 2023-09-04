import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/screens/source_item.dart';
import 'package:news/shared/network/remote/apiManeger.dart';

class News_page extends StatefulWidget {
  static const String routeName = "new";

  @override
  State<News_page> createState() => _News_pageState();
}

class _News_pageState extends State<News_page> {
  int currentsource = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          title: Text(
            "Sports",
            style: GoogleFonts.quicksand(fontSize: 22),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                )),
          ]),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
            future: ApiManager.getSources(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text("somthing has error"),
                );
              }

              var sourses = snapshot.data?.sources ?? [];
              return Column(
                children: [
                  Container(
                    height: 40,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              currentsource = index;
                              setState(() {});
                            },
                            child: Source_item(
                                sourses[index].name ?? "",
                                sourses.elementAt(currentsource) ==
                                    sourses[index]));
                      },
                      itemCount: sourses.length,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 13,
                      ),
                    ),
                  ),

                ],
              );
            }),
      ),
    );
  }
}
