import 'package:flutter/material.dart';

import '../custom_widgets.dart';

class HomePage extends StatelessWidget {
  final String _advertImage = "assets/advert2.png";
  final String _address = "Mücahitler Mahallesi Şehit Ertuğrul Polat Caddesi";
  final String _locationName = "Ev";
  final String _duration = "15-20 DK";

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

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomWidgets.getAppBar("getir", Colors.amber, 24, FontWeight.bold),
      body: Column(
        children: [
          _getAdressBar(context, _locationName, _address, _duration),
          const SizedBox(height: 5),
          _getAdvert(_advertImage),
          const SizedBox(height: 30),
          _getCategories(),
        ],
      ),
      bottomNavigationBar: CustomWidgets.getBottomNavigationBar(0, (index) {}),
    );
  }

  Widget _getAdressBar(BuildContext context, String locationName,
      String address, String duration) {
    return Container(
      width: double.infinity,
      color: Colors.amber,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 11, bottom: 11, left: 15, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "$locationName, $address",
                          style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Icon(
                        Icons.expand_more,
                        color: CustomWidgets.getirColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              height: 40,
              child: Center(
                child: Text(
                  duration,
                  style: const TextStyle(
                      fontSize: 13,
                      color: CustomWidgets.getirColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getAdvert(String image) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
        },
      ),
    );
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
