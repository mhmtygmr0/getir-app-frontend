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
          buildIcons(_drinksImage, "Beverages"),
          buildIcons(_bakedImage, "Baked Goods"),
        ],
      ),
    );
  }
}

Widget buildIcons(String imagePath, String text) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
        child: Container(
          width: 125,
          height: 125,
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
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
