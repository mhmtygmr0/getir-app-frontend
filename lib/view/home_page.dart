import 'package:flutter/material.dart';

import '../product/custom_widgets.dart';

class HomePage extends StatelessWidget {
  static const String _advertImage = "assets/advertImages/advert2.png";
  static const String _address =
      "Mücahitler Mahallesi Şehit Ertuğrul Polat Caddesi";
  static const String _locationName = "Ev";
  static const String _duration = "15-20 DK";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomWidgets.getAppBar("getir", Colors.amber, 24, FontWeight.bold),
      body: Column(
        children: [
          _getAdressBar(context, _locationName, _address, _duration),
          _getAdvert(_advertImage),
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
                height: 45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 11, bottom: 11, left: 15, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "$locationName, ",
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: CustomWidgets.getirColor, // Mor renk
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: address,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 20),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  textAlign: TextAlign.center,
                  duration,
                  style: const TextStyle(
                      fontSize: 14,
                      color: CustomWidgets.getirColor,
                      fontWeight: FontWeight.bold),
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
      padding: const EdgeInsets.only(
        left: 13,
        right: 13,
        top: 15,
        bottom: 30,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          height: 175,
        ),
      ),
    );
  }

  Widget _getCategories() {
    return Expanded(
      child: GridView.builder(
        itemCount: CustomWidgets.categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 2,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return _buildCategories(
            CustomWidgets.categories[index]["image"]!,
            CustomWidgets.categories[index]["title"]!,
          );
        },
      ),
    );
  }

  Widget _buildCategories(String imagePath, String text) {
    return Column(
      children: [
        Container(
          width: 82,
          height: 82,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 2),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
