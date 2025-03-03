import 'package:flutter/material.dart';

class CustomWidgets {
  static const Color getirColor = Color(0xFF5C3CBB);
  static final String _gift = "assets/navigationBarIcons/gift.ico";
  static final String _home = "assets/navigationBarIcons/home.ico";
  static final String _person = "assets/navigationBarIcons/person.ico";
  static final String _search = "assets/navigationBarIcons/search.ico";

  static PreferredSizeWidget getAppBar(
    String title,
    Color titleColor,
    double titleSize,
    FontWeight titleFontWeight,
  ) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: titleSize,
          fontWeight: titleFontWeight,
        ),
      ),
      centerTitle: true,
      backgroundColor: getirColor,
    );
  }

  static Widget getBottomNavigationBar(int currentIndex, Function(int) onTap) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset(
              _home,
              width: 30,
              height: 30,
              color: currentIndex == 0 ? getirColor : Colors.grey,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset(
              _search,
              width: 30,
              height: 30,
              color: currentIndex == 1 ? getirColor : Colors.grey,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset(
              _person,
              width: 25,
              height: 25,
              color: currentIndex == 2 ? getirColor : Colors.grey,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset(
              _gift,
              width: 25,
              height: 25,
              color: currentIndex == 3 ? getirColor : Colors.grey,
            ),
          ),
          label: "",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 5,
    );
  }

  static final List<Map<String, String>> categories = [
    {"image": "assets/categoryImages/drinks.png", "title": "Su & İçecek"},
    {"image": "assets/categoryImages/snacks.png", "title": "Atıştırmalık"},
    {
      "image": "assets/categoryImages/fruits_vegetables.png",
      "title": "Meyve & Sebze",
    },
    {"image": "assets/categoryImages/milk_dairy.png", "title": "Süt Ürünleri"},
    {"image": "assets/categoryImages/baked_goods.png", "title": "Fırından"},
    {"image": "assets/categoryImages/ice_cream.png", "title": "Dondurma"},
    {"image": "assets/categoryImages/food.png", "title": "Temel Gıda"},
    {"image": "assets/categoryImages/breakfast.png", "title": "Kahvaltılık"},
    {"image": "assets/categoryImages/readyFood.png", "title": "Yiyecek"},
    {"image": "assets/categoryImages/meats.png", "title": "Et, Tavuk & Balık"},
    {"image": "assets/categoryImages/fitForm.png", "title": "Fit & Form"},
    {
      "image": "assets/categoryImages/personalCare.png",
      "title": "Kişisel Bakım",
    },
    {"image": "assets/categoryImages/homeCare.png", "title": "Ev Bakım"},
    {"image": "assets/categoryImages/homeLife.png", "title": "Ev & Yaşam"},
    {"image": "assets/categoryImages/pets.png", "title": "Evcil Hayvan"},
    {"image": "assets/categoryImages/baby.png", "title": "Bebek"},
  ];
}
