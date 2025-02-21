import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final String _title = "getir";
  final String _drinksImage = "assets/drinks.png";
  final String _bakedImage = "assets/baked_goods.png";
  final String _foodImage = "assets/food.png";
  final String _fruitsImage = "assets/fruits_vegetables.png";
  final String _iceCreamImage = "assets/ice_cream.png";
  final String _milkDairyImage = "assets/milk_dairy.png";
  final String _snacksImage = "assets/snacks.png";
  final String _mainImage = "assets/mainImage.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            _title,
            style: TextStyle(
              color: Colors.amber,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xFF5C3CBB),
      ),

      body: Column(
        children: [
          mainIcons(_mainImage),
          SizedBox(height: 5),
          Row(
            children: [
              buildIcons(_drinksImage, "Beverages"),
              buildIcons(_snacksImage, "Snacks"),
              buildIcons(_fruitsImage, "Fruit & Vegetables"),
              buildIcons(_milkDairyImage, "Milk & Dairy"),
            ],
          ),
          Row(
            children: [
              buildIcons(_bakedImage, "Baked Goods"),
              buildIcons(_iceCreamImage, "Ice Cream"),
              buildIcons(_foodImage, "Food"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget mainIcons(String imagePath) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image.asset(imagePath),
      ),
    ),
  );
}

Widget buildIcons(String imagePath, String text) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
        child: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(imagePath),
          ),
        ),
      ),
      SizedBox(height: 3),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
