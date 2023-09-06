import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/model/gategory_model.dart';

class CategoryItem extends StatelessWidget {
  Category_Model category_model;
  int index;
  CategoryItem(this.category_model,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: category_model.color, borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomRight: index.isOdd?Radius.circular(25):Radius.zero,
          bottomLeft:index.isEven?Radius.circular(25):Radius.zero

      )),
      child: Column(
        children: [
          Expanded(child: Image.asset(category_model.image)),
          Text(
            category_model.name,
            style: GoogleFonts.quicksand(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
          )
        ],
      ),
    );
  }
}
