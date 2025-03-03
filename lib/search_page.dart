import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.getAppBar(
        "Arama",
        Colors.white,
        19,
        FontWeight.normal,
      ),
      body: Column(children: [_getTextField()]),
      bottomNavigationBar: CustomWidgets.getBottomNavigationBar(1, (index) {}),
    );
  }

  Widget _getTextField() {
    return TextField();
  }
}
