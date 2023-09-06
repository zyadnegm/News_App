import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/screens/cateogry_screen.dart';
import 'package:news/screens/newsItem.dart';
import 'package:news/screens/source_item.dart';
import 'package:news/shared/network/remote/apiManeger.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = "new";

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          title: Text(
            "News",
            style: GoogleFonts.quicksand(fontSize: 25),
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


      body: CateogryScreen()


    );
  }
}
