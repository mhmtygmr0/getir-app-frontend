import 'package:flutter/material.dart';

import 'colors.dart';

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
}
