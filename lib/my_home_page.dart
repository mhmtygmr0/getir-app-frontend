import 'package:flutter/material.dart';

// MyHomePage adında bir sınıf oluşturuyoruz. Bu sınıf, StatelessWidget sınıfından türetiliyor.
// StatelessWidget, değişmeyen (statik) bir widget'tır. Yani, bu widget'ın içeriği bir kez oluşturulur ve değiştirilemez.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Sabit değişkenler tanımlıyoruz. Bu değişkenler, uygulama boyunca değişmeyecek bilgileri tutar.
  final String _title = "getir";
  final String _drinksImage = "assets/drinks.png";
  final String _bakedImage = "assets/baked_goods.png";
  final String _foodImage = "assets/food.png";
  final String _fruitsImage = "assets/fruits_vegetables.png";
  final String _iceCreamImage = "assets/ice_cream.png";
  final String _milkDairyImage = "assets/milk_dairy.png";
  final String _snacksImage = "assets/snacks.png";
  final String _mainImage = "assets/mainImage.png";

  // build metodu, widget'ın nasıl görüneceğini belirler. Bu metod, widget'ın ekranda nasıl render edileceğini tanımlar.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold, temel bir materyal tasarımı widget'ıdır. Uygulamanın yapısını oluşturur.
      appBar: AppBar(
        // AppBar, uygulamanın üst kısmında bulunan bir araç çubuğudur.
        title: Text(
          _title,
          style: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF5C3CBB),
      ),

      // body, uygulamanın ana içeriğini tutar.
      body: Column(
        // Column, widget'ları dikey olarak sıralar.
        children: [
          // mainIcons adında bir widget çağırıyoruz. Bu widget, ana resmi ekranda gösterir.
          mainIcons(_mainImage),
          SizedBox(height: 5),
          // SizedBox, boşluk eklemek için kullanılır.
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                buildIcons(_drinksImage, "Beverages"),
                buildIcons(_snacksImage, "Snacks"),
                buildIcons(_fruitsImage, "Fruit & Vegetables"),
                buildIcons(_milkDairyImage, "Milk & Dairy"),
                buildIcons(_bakedImage, "Baked Goods"),
                buildIcons(_iceCreamImage, "Ice Cream"),
                buildIcons(_foodImage, "Food"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// mainIcons adında bir widget oluşturuyoruz. Bu widget, ana resmi ekranda gösterir.
Widget mainIcons(String imagePath) {
  return Center(
    // Center, içindeki widget'ı ekranın ortasına yerleştirir.
    child: Padding(
      // Padding, içindeki widget'a belirli bir boşluk ekler.
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        // ClipRRect, widget'ın köşelerini yuvarlar.
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image.asset(
          imagePath,
        ), // Image.asset, belirtilen resmi ekranda gösterir.
      ),
    ),
  );
}

// buildIcons adında bir widget oluşturuyoruz. Bu widget, bir resim ve metin içerir.
Widget buildIcons(String imagePath, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            // Container, bir kutudur ve içine widget'lar yerleştirilebilir.
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(imagePath),
            ),
          ),
        ),
        SizedBox(height: 3), // SizedBox, boşluk eklemek için kullanılır.
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
