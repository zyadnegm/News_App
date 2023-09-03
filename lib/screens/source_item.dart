import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/shared/style/color/appColor.dart';

class Source_item extends StatelessWidget {
  String txt;
  bool isSelected;

  Source_item(this.txt, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      width: 95,
      height: 34,
      decoration: BoxDecoration(
          color: isSelected ? primarycolor : Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: primarycolor)),
      child: Text(
        txt,
        style: GoogleFonts.quicksand(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : primarycolor),
      ),
    );
  }
}
