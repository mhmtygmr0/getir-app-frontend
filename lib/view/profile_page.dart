import 'package:flutter/material.dart';

import '../product/custom_widgets.dart';
import '../product/images.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  List<Map<String, String>> menuItems = [
    {"image": Images.person, "title": "Mehmet Sait Yağmur"},
    {"image": Images.email, "title": "mehmetygmrr02@gmail.com"},
    {"image": Images.phone, "title": "+905364943531"},
    {"image": Images.location, "title": "Adreslerim"},
    {"image": Images.favorite, "title": "Favori Ürünlerim"},
    {"image": Images.basket, "title": "Geçmiş Siparişlerim"},
    {"image": Images.credit_card, "title": "Ödeme Yöntemlerim"},
    {"image": Images.security, "title": "Hesap Ayarları"},
    {"image": Images.logout, "title": "Çıkış Yap"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.getAppBar(
        "Profil",
        Colors.white,
        16,
        FontWeight.w600,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: _getMenuItems(),
      ),
      bottomNavigationBar: CustomWidgets.getBottomNavigationBar(2, (index) {}),
    );
  }

  Widget _getMenuItems() {
    return ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return buildMenuItem(
            menuItems[index]["image"]!,
            menuItems[index]["title"]!,
            isBoxed: index == 0,
          );
        });
  }

  Widget buildMenuItem(String imagePath, String title, {bool isBoxed = false}) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SizedBox(
        width: double.infinity,
        height: isBoxed ? 85 : 50,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: isBoxed
                  ? Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 45,
                      child: Image.asset(
                        imagePath,
                        color: CustomWidgets.getirColor,
                      ),
                    )
                  : Image.asset(
                      imagePath,
                      height: 25,
                      color: CustomWidgets.getirColor,
                    ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: CustomWidgets.getirColor,
                size: 17,
              ),
            )
          ],
        ),
      ),
    );
  }
}
