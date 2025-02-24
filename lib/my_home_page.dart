import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String _appBarTitle = "getir";
  final String _advertImage = "assets/advert2.png";

  final List<Map<String, String>> _categories = [
    {"image": "assets/drinks.png", "title": "Su & İçecek"},
    {"image": "assets/snacks.png", "title": "Atıştırmalık"},
    {"image": "assets/fruits_vegetables.png", "title": "Meyve & Sebze"},
    {"image": "assets/milk_dairy.png", "title": "Süt Ürünleri"},
    {"image": "assets/baked_goods.png", "title": "Fırından"},
    {"image": "assets/ice_cream.png", "title": "Dondurma"},
    {"image": "assets/food.png", "title": "Temel Gıda"},
    {"image": "assets/breakfast.png", "title": "Kahvaltılık"},
    {"image": "assets/readyFood.png", "title": "Yiyecek"},
    {"image": "assets/meats.png", "title": "Et, Tavuk & Balık"},
    {"image": "assets/fitForm.png", "title": "Fit & Form"},
    {"image": "assets/personalCare.png", "title": "Kişisel Bakım"},
    {"image": "assets/homeCare.png", "title": "Ev Bakım"},
    {"image": "assets/homeLife.png", "title": "Ev & Yaşam"},
    {"image": "assets/pets.png", "title": "Evcil Hayvan"},
    {"image": "assets/baby.png", "title": "Bebek"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _getAppBar(),
        body: Column(children: [
          _getAdressBar(),
          SizedBox(height: 5),
          _getAdvert(_advertImage),
          SizedBox(height: 20),
          _getCategories(),
        ]),
        bottomNavigationBar: _getBottomNavigationBar());
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard, color: Colors.grey), label: "")
      ],
      type: BottomNavigationBarType.fixed,
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text(
        _appBarTitle,
        style: TextStyle(
          color: Colors.amber,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color(0xFF5C3CBB),
    );
  }

  Widget _getAdressBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 350,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "İş Yeri, Gaziantep Üniversitesi Teknopark",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.grey),
            ],
          ),
        ),
        Container(
          height: 45,
          width: 98,
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: Center(
            child: Text(
              "15-20 DK",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5C3CBB),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getAdvert(String image) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _getCategories() {
    return Expanded(
        child: GridView.builder(
            itemCount: _categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              return _buildCategories(
                _categories[index]["image"]!,
                _categories[index]["title"]!,
              );
            }));
  }

  Widget _buildCategories(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
