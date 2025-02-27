import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final String _appBarTitle = "Arama";
  final Color _getirColor = Color(0xFF5C3CBB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: Column(
        children: [_getTextField()],
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text(
        _appBarTitle,
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: _getirColor,
    );
  }

  Widget _getTextField() {
    return TextField(
    );
  }
}
