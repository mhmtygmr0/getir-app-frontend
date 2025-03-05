import 'package:flutter/material.dart';

import '../product/custom_widgets.dart';
import '../product/images.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        child: Column(
          children: [
            buildMenuItem("Mehmet Sait Yağmur", Images.person, isBoxed: true),
            buildMenuItem("mehmetygmrr02@gmail.com", Images.email),
            buildMenuItem("+905364943531", Images.phone),
            buildMenuItem("Adreslerim", Images.location),
            buildMenuItem("Favori Ürünlerim", Images.favorite),
            buildMenuItem("Geçmiş Siparişlerim", Images.basket),
            buildMenuItem("Ödeme Yöntemlerim", Images.credit_card),
            buildMenuItem("Hesap Ayarları", Images.security),
            buildMenuItem("Çıkış Yap", Images.logout),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(String title, String imagePath, {bool isBoxed = false}) {
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
                      height: 30,
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
