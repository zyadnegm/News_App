import 'package:flutter/material.dart';
import 'package:news/screens/news_screen.dart';
import 'package:news/shared/style/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: News_page.routeName,

      routes: {
        News_page.routeName:(context) => News_page()
      },
      theme: My_theme.LightTheme,



    );
  }
}
