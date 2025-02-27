import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class ExpressionHomePage extends StatelessWidget {
  // StatelessWidget, değişmeyen bir widget'tir. Bu sınıf, ana sayfamızı temsil eder.
  final String _advertImage =
      "assets/advert2.png"; // Reklam resminin dosya yolu.
  final String _address =
      "Mücahitler Mahallesi Şehit Ertuğrul Polat Caddesi"; // Adres bilgisi.
  final String _locationName = "Ev"; // Konum adı.
  final String _duration = "15-20 DK"; // Teslimat süresi.

  // Kategorileri ve her bir kategori için resim ve başlık bilgilerini içeren liste.
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

  ExpressionHomePage(
      {super.key}); // Constructor metodu. Key, widget'lerin kimliğini belirlemek için kullanılır.

  @override
  Widget build(BuildContext context) {
    // build metodu, widget'ın nasıl görüneceğini belirler.
    return Scaffold(
      // 1. Scaffold: Materyal tasarımının temel yapısını sağlar. AppBar, Body, BottomNavigationBar gibi bileşenleri içerir.
      appBar: CustomWidgets.getAppBar("getir", Colors.amber, 24),
      // Özel AppBar widget'ini çağırır.
      body: Column(
        // 2. Column: Widget'leri dikey olarak sıralar.
        children: [
          _getAdressBar(context, _locationName, _address, _duration),
          // Adres çubuğunu oluşturan metodu çağırır.
          const SizedBox(height: 5),
          // 3. SizedBox: 5 piksel boşluk ekler.
          _getAdvert(_advertImage),
          // Reklam resmini oluşturan metodu çağırır.
          const SizedBox(height: 30),
          // 3. SizedBox: 30 piksel boşluk ekler.
          _getCategories(),
          // Kategorileri oluşturan metodu çağırır.
        ],
      ),
      bottomNavigationBar: CustomWidgets.getBottomNavigationBar(
          0, (index) {}), // Özel BottomNavigationBar widget'ini çağırır.
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
      // 8. Padding: İçeriğe boşluk ekler.
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      // Sol, sağ ve üst boşluk.
      child: ClipRRect(
        // 14. ClipRRect: Widget'in köşelerini yuvarlar.
        borderRadius: BorderRadius.circular(25), // Köşe yuvarlaklığı.
        child: Image.asset(
          // 15. Image.asset: Proje içindeki resim dosyalarını göstermek için kullanılır.
          image,
          fit: BoxFit.cover, // Resmi kaplama şekli.
        ),
      ),
    );
  }

  Widget _getCategories() {
    return Expanded(
      // 10. Expanded: Widget'in kalan alanı kaplamasını sağlar.
      child: GridView.builder(
        // 16. GridView.builder: Izgara yapısında widget'ler oluşturur.
        itemCount: _categories.length, // Kategori sayısı.
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Yatayda 4 sütun.
          mainAxisSpacing: 10, // Dikey boşluk.
          crossAxisSpacing: 10, // Yatay boşluk.
          childAspectRatio: 0.9, // Çocuk widget'lerin en-boy oranı.
        ),
        itemBuilder: (context, index) {
          return _buildCategories(
            _categories[index]["image"]!, // Kategori resmi.
            _categories[index]["title"]!, // Kategori başlığı.
          );
        },
      ),
    );
  }

  Widget _buildCategories(String imagePath, String text) {
    return Padding(
      // 8. Padding: İçeriğe boşluk ekler.
      padding: const EdgeInsets.only(right: 10, left: 10), // Sağ ve sol boşluk.
      child: Column(
        // 2. Column: Widget'leri dikey olarak sıralar.
        children: [
          Container(
            // 4. Container: Widget'leri gruplamak ve stil vermek için kullanılır.
            width: 85, // Genişlik.
            height: 85, // Yükseklik.
            decoration: BoxDecoration(
              color: Colors.grey[300], // Arka plan rengi.
              borderRadius: BorderRadius.circular(20), // Köşe yuvarlaklığı.
            ),
            child: ClipRRect(
              // 14. ClipRRect: Widget'in köşelerini yuvarlar.
              borderRadius: BorderRadius.circular(20), // Köşe yuvarlaklığı.
              child: Image.asset(imagePath,
                  fit: BoxFit
                      .cover), // 15. Image.asset: Resim dosyasını gösterir.
            ),
          ),
          const SizedBox(height: 5), // 3. SizedBox: 5 piksel boşluk.
          Text(
            // 6. Text: Metin göstermek için kullanılır.
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            // Metin stili.
            textAlign: TextAlign.center, // Metni ortalar.
          ),
        ],
      ),
    );
  }
}
