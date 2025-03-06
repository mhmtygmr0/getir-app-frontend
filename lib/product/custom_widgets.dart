import 'package:flutter/material.dart';

import 'colors.dart';
import 'images.dart';

class CustomWidgets {
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
      backgroundColor: AppColors.getirColor,
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
