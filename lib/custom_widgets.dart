import 'package:flutter/material.dart';

class CustomWidgets {
  static const Color getirColor = Color(0xFF5C3CBB);

  static PreferredSizeWidget getAppBar(
      String title, Color titleColor, double titleSize) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: titleSize,
          fontWeight: FontWeight.bold,
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
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: ""),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: getirColor,
    );
  }
}
