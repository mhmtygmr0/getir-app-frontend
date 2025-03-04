import 'package:flutter/material.dart';

import '../product/custom_widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.getAppBar(
        "Arama",
        Colors.white,
        19,
        FontWeight.normal,
      ),
      body: Column(children: [
        _buildTextField(),
      ]),
      bottomNavigationBar: CustomWidgets.getBottomNavigationBar(1, (index) {}),
    );
  }

  Widget _buildTextField() {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: CustomWidgets.getirColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          hintText: "Ürün Ara",
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          suffixIcon: Icon(Icons.mic)),
    );
  }
}
