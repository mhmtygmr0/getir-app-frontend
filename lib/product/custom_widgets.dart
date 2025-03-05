import 'package:flutter/material.dart';

import 'images.dart';

class CustomWidgets {
  static const Color getirColor = Color(0xFF5C3CBB);

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
            letterSpacing: 0.001),
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
              Images.home,
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
              Images.search,
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
              Images.person,
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
              Images.gift,
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
    {"image": Images.drinks, "title": "Su & İçecek"},
    {"image": Images.snacks, "title": "Atıştırmalık"},
    {"image": Images.fruits_vegetables, "title": "Meyve & Sebze"},
    {"image": Images.milk_dairy, "title": "Süt Ürünleri"},
    {"image": Images.baked_goods, "title": "Fırından"},
    {"image": Images.ice_cream, "title": "Dondurma"},
    {"image": Images.food, "title": "Temel Gıda"},
    {"image": Images.breakfast, "title": "Kahvaltılık"},
    {"image": Images.ready_food, "title": "Yiyecek"},
    {"image": Images.meats, "title": "Et, Tavuk & Balık"},
    {"image": Images.fit_form, "title": "Fit & Form"},
    {"image": Images.personal_care, "title": "Kişisel Bakım"},
    {"image": Images.home_care, "title": "Ev Bakım"},
    {"image": Images.home_life, "title": "Ev & Yaşam"},
    {"image": Images.pets, "title": "Evcil Hayvan"},
    {"image": Images.baby, "title": "Bebek"},
  ];
}
