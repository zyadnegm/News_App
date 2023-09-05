import 'dart:ui';

class Category_Model{
  String id;
  String name;
  String image;
  Color color;

  Category_Model(this.id, this.name, this.image, this.color);
  List<Category_Model>getGategory(){
    return [
      Category_Model("business", "business", "assets/images/bussines.png", Color(0XffCF7E48)),
      Category_Model("entertainment", "entertainment", "assets/images/entertainment.png", Color(0XffCF7E48)),
      Category_Model("health", "health", "assets/images/health.png", Color(0XffED1E79)),
      Category_Model("science", "science", "assets/images/science.png", Color(0XffF2D352)),
      Category_Model("sports", "sports", "assets/images/sports.png", Color(0XffC91C22)),
      Category_Model("Politics", "Politics", "assets/images/Politics.png", Color(0Xff003E90)),
    ];
  }


}