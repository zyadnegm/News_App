import 'package:flutter/material.dart';
import 'package:news/screens/source_item.dart';

import '../shared/network/remote/apiManeger.dart';
import 'newsItem.dart';

class News_screen extends StatefulWidget {
  const News_screen({super.key});

  @override
  State<News_screen> createState() => _News_screenState();
}

class _News_screenState extends State<News_screen> {
  int currentsource = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                DefaultTabController(length: sourses.length,
                    child: TabBar(
                      onTap: (value) {
                        currentsource=value;
                        setState(() {
                        });
                      },

                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      tabs: sourses.map((e) {
                        return Source_item(e.name??"", sourses.indexOf(e)==currentsource);
                      }
                      ).toList(),
                    )
                ),
                FutureBuilder(future: ApiManager.getNewsData(sourses[currentsource].id??""),builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("somthing has error"),
                    );
                  }
                  var articales=snapshot.data?.articles??[];
                  return Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return NewsItem(articales[index]);
                    },
                      itemCount: articales.length,
                    ),
                  );
                }
                  ,)
              ],
            );
          }
      ),

    );
  }
}
