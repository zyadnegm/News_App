import 'package:flutter/material.dart';
import 'package:news/model/gategory_model.dart';
import 'package:news/screens/category_item.dart';

class CateogryScreen extends StatelessWidget {
  var categores = Category_Model.getGategory();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: categores.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
        itemBuilder: (context, index) {
          return CategoryItem(categores[index],index);
        },
      ),
    );
  }
}
