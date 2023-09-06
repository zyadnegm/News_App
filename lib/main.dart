import 'package:flutter/material.dart';
import 'package:news/screens/Home_screen.dart';
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
      initialRoute: Home_Screen.routeName,

      routes: {
        Home_Screen.routeName:(context) => Home_Screen()
      },
      theme: My_theme.LightTheme,



    );
  }
}
