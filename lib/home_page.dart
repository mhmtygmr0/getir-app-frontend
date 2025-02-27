import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String _appBarTitle = "getir";
  final String _advertImage = "assets/advert2.png";
  final String _address = "Mücahitler Mahallesi Şehit Ertuğrul Polat Caddesi";
  final String _locationName = "Ev";
  final String _duration = "15-20 DK";
  final Color _getirColor = Color(0xFF5C3CBB);

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
        appBar: _getAppBar(),
        body: Column(children: [
          _getAdressBar(context, _locationName, _address, _duration),
          SizedBox(height: 5),
          _getAdvert(_advertImage),
          SizedBox(height: 30),
          _getCategories(),
        ]),
        bottomNavigationBar: _getBottomNavigationBar());
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: ""),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: _getirColor);
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
      backgroundColor: _getirColor,
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 15, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "$locationName, $address",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.expand_more,
                        color: _getirColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.20,
              height: 40,
              child: Center(
                child: Text(
                  duration,
                  style: TextStyle(
                      fontSize: 13,
                      color: _getirColor,
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
