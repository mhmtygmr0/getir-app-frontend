import 'package:flutter/material.dart';

class deneme extends StatelessWidget {
  deneme(
      {super.key}); // Constructor (yapıcı) metodu. Key, widget'ın kimliğini belirler.

  // Sabit değişkenler tanımlıyoruz. Bu değişkenler, uygulama boyunca değişmeyecek bilgileri tutar.
  final String _appBarTitle = "getir"; // AppBar'da gösterilecek başlık.
  final String _advertImage =
      "assets/advert2.png"; // Reklam resminin dosya yolu.

  // Kategorileri tutan bir liste. Her kategori, bir resim ve bir başlık içerir.
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

  // build metodu, widget'ın nasıl görüneceğini belirler. Bu metod, widget'ın ekranda nasıl render edileceğini tanımlar.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold, temel bir materyal tasarımı widget'ıdır. Uygulamanın yapısını oluşturur.
      appBar: _getAppBar(), // AppBar'ı oluşturan metodu çağırıyoruz.
      body: Column(
        // Column, widget'ları dikey olarak sıralar.
        children: [
          _getAdvert(_advertImage),
          // Reklam resmini gösteren metodu çağırıyoruz.
          SizedBox(height: 20),
          // Reklam ve kategoriler arasında 20 piksel boşluk bırakıyoruz.
          _getCategories(),
          // Kategorileri gösteren metodu çağırıyoruz.
        ],
      ),
    );
  }

  // AppBar'ı oluşturan metot.
  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text(
        _appBarTitle, // AppBar'ın başlığı.
        style: TextStyle(
          color: Colors.amber, // Başlık rengi.
          fontSize: 24, // Başlık font boyutu.
          fontWeight: FontWeight.bold, // Başlık font kalınlığı.
        ),
      ),
      centerTitle: true, // Başlığı ortala.
      backgroundColor: Color(0xFF5C3CBB), // AppBar'ın arka plan rengi.
    );
  }

  // Reklam resmini gösteren metot.
  Widget _getAdvert(String image) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      // Reklam resmine padding (boşluk) ekliyoruz.
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        // Resmin köşelerini yuvarlıyoruz.
        child: Image.asset(
          image,
          fit: BoxFit.cover, // Resmi container'a sığdır.
        ),
      ),
    );
  }

  // Kategorileri gösteren metot.
  Widget _getCategories() {
    return Expanded(
      // Expanded, içindeki widget'ın kullanılabilir alanı tamamen kaplamasını sağlar.
      child: GridView.builder(
        // GridView.builder, bir ızgara (grid) oluşturur ve dinamik olarak item'ları yerleştirir.
        itemCount: _categories.length, // Kategori sayısı.
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Her satırda 4 kategori göster.
          mainAxisSpacing: 10, // Dikey boşluk.
          crossAxisSpacing: 10, // Yatay boşluk.
          childAspectRatio: 0.9, // Item'ların en-boy oranı.
        ),
        itemBuilder: (context, index) {
          // Her bir kategori için _buildCategories metodunu çağır.
          return _buildCategories(
            _categories[index]["image"]!, // Kategori resmi.
            _categories[index]["title"]!, // Kategori başlığı.
          );
        },
      ),
    );
  }

  // Her bir kategoriyi oluşturan metot.
  Widget _buildCategories(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      // Kategoriye padding (boşluk) ekle.
      child: Column(
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: Colors.grey[300], // Container'ın arka plan rengi.
              borderRadius:
                  BorderRadius.circular(20), // Container'ın köşelerini yuvarla.
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              // Resmin köşelerini yuvarla.
              child: Image.asset(imagePath,
                  fit: BoxFit.cover), // Resmi container'a sığdır.
            ),
          ),
          const SizedBox(height: 5),
          // Resim ve metin arasında 5 piksel boşluk bırak.
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            // Metin stili.
            textAlign: TextAlign.center, // Metni ortala.
          ),
        ],
      ),
    );
  }
}
