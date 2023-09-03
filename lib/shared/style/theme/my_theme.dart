import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/appColor.dart';

class My_theme {
  static ThemeData LightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 70,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            )

        ),
        titleTextStyle: GoogleFonts.poppins(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        iconTheme: IconThemeData(color: primarycolor),
        backgroundColor: primarycolor,
      ),
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        selectedItemColor: primarycolor,
        unselectedItemColor: Colors.grey,
      ));

}
