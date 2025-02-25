import 'package:flutter/material.dart'; // Flutter'ın temel widget'lerini ve materyal tasarımını içe aktarır.

class expressionHomePage extends StatelessWidget {
  // StatelessWidget, değişmeyen bir widget'tir. Bu sınıf, ana sayfamızı temsil eder.
  final String _appBarTitle = "getir"; // AppBar'da gösterilecek başlık metni.
  final String _advertImage =
      "assets/advert2.png"; // Reklam resminin dosya yolu.
  final String _address = "Gaziantep Üniversitesi Teknopark"; // Adres bilgisi.
  final String _locationName = "İş Yeri"; // Konum adı.
  final String _duration = "15-20 DK"; // Teslimat süresi.
  final Color _getirColor = Color(0xFF5C3CBB); // Getir'in ana rengi (mor).

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

  expressionHomePage(
      {super.key}); // Constructor metodu. Key, widget'lerin kimliğini belirlemek için kullanılır.

  @override
  Widget build(BuildContext context) {
    // build metodu, widget'ın nasıl görüneceğini belirler.
    return Scaffold(
        // Scaffold, materyal tasarımının temel yapısını sağlar.
        appBar: _getAppBar(), // AppBar'ı oluşturan metodu çağırır.
        body: Column(children: [
          // Column, widget'leri dikey olarak sıralar.
          _getAdressBar(_locationName, _address, _duration),
          // Adres çubuğunu oluşturan metodu çağırır.
          SizedBox(height: 5),
          // 5 piksel boşluk ekler.
          _getAdvert(_advertImage),
          // Reklam resmini oluşturan metodu çağırır.
          SizedBox(height: 30),
          // 30 piksel boşluk ekler.
          _getCategories(),
          // Kategorileri oluşturan metodu çağırır.
        ]),
        bottomNavigationBar:
            _getBottomNavigationBar()); // Alt navigasyon çubuğunu oluşturan metodu çağırır.
  }

  Widget _getBottomNavigationBar() {
    // Alt navigasyon çubuğunu oluşturan metod.
    return BottomNavigationBar(
        // BottomNavigationBar, alt navigasyon çubuğunu temsil eder.
        currentIndex: 0,
        // Seçili olan sekmenin indeksi.
        items: [
          // Navigasyon çubuğundaki öğeler.
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          // Ana sayfa sekmesi.
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          // Arama sekmesi.
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          // Profil sekmesi.
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: ""),
          // Hediyeler sekmesi.
        ],
        type: BottomNavigationBarType.fixed,
        // Sabit bir navigasyon çubuğu tipi.
        selectedItemColor: _getirColor); // Seçili öğenin rengi.
  }

  PreferredSizeWidget _getAppBar() {
    // AppBar'ı oluşturan metod.
    return AppBar(
      // AppBar, uygulamanın üst kısmındaki çubuktur.
      title: Text(
        // AppBar'ın başlık metni.
        _appBarTitle,
        style: TextStyle(
          // Metin stilini belirler.
          color: Colors.amber, // Metin rengi.
          fontSize: 24, // Metin boyutu.
          fontWeight: FontWeight.bold, // Metin kalınlığı.
        ),
      ),
      centerTitle: true, // Başlığı ortalar.
      backgroundColor: _getirColor, // AppBar'ın arka plan rengi.
    );
  }

  Widget _getAdressBar(String locationName, String address, String duration) {
    // Adres çubuğunu oluşturan metod.
    return GestureDetector(
      // GestureDetector, dokunma olaylarını algılar.
      onTap: () {}, // Dokunma olayı için boş bir fonksiyon.
      child: Row(
        // Row, widget'leri yatay olarak sıralar.
        children: [
          Container(
            // Container, widget'leri gruplamak ve stil vermek için kullanılır.
            width: 350,
            // Container'ın genişliği.
            height: 45,
            // Container'ın yüksekliği.
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // İç boşluk.
            decoration: BoxDecoration(
                // Container'ın stilini belirler.
                color: Colors.white, // Arka plan rengi.
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(15))),
            // Sağ köşeyi yuvarlar.
            child: Row(
              // İçerikteki widget'leri yatay olarak sıralar.
              children: [
                Expanded(
                  // Expanded, widget'in kalan alanı kaplamasını sağlar.
                  child: Text(
                    // Metin widget'i.
                    "$locationName, $address", // Adres bilgisi.
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    // Metin stili.
                    overflow: TextOverflow
                        .ellipsis, // Metin taşarsa üç nokta ile gösterir.
                  ),
                ),
                Icon(Icons.expand_more, color: _getirColor, size: 30),
                // Genişletme ikonu.
              ],
            ),
          ),
          Container(
            // İkinci Container, teslimat süresini gösterir.
            height: 45, // Yükseklik.
            width: 98, // Genişlik.
            decoration: BoxDecoration(
              color: Colors.amber, // Arka plan rengi.
            ),
            child: Center(
              // İçeriği ortalar.
              child: Text(
                // Teslimat süresi metni.
                duration,
                style: TextStyle(
                    // Metin stili.
                    fontSize: 14,
                    color: _getirColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getAdvert(String image) {
    // Reklam resmini oluşturan metod.
    return Padding(
      // Padding, içeriğe boşluk ekler.
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      // Sol, sağ ve üst boşluk.
      child: ClipRRect(
        // ClipRRect, widget'in köşelerini yuvarlar.
        borderRadius: BorderRadius.circular(25), // Köşe yuvarlaklığı.
        child: Image.asset(
          // Resim widget'i.
          image,
          fit: BoxFit.cover, // Resmi kaplama şekli.
        ),
      ),
    );
  }

  Widget _getCategories() {
    // Kategorileri oluşturan metod.
    return Expanded(
        // Expanded, widget'in kalan alanı kaplamasını sağlar.
        child: GridView.builder(
            // GridView.builder, ızgara yapısında widget'ler oluşturur.
            itemCount: _categories.length, // Kategori sayısı.
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // Izgara yapısını belirler.
              crossAxisCount: 4, // Yatayda 4 sütun.
              mainAxisSpacing: 10, // Dikey boşluk.
              crossAxisSpacing: 10, // Yatay boşluk.
              childAspectRatio: 0.9, // Çocuk widget'lerin en-boy oranı.
            ),
            itemBuilder: (context, index) {
              // Her bir kategori için widget oluşturur.
              return _buildCategories(
                _categories[index]["image"]!, // Kategori resmi.
                _categories[index]["title"]!, // Kategori başlığı.
              );
            }));
  }

  Widget _buildCategories(String imagePath, String text) {
    // Kategori widget'ini oluşturan metod.
    return Padding(
      // Padding, içeriğe boşluk ekler.
      padding: const EdgeInsets.only(right: 10, left: 10), // Sağ ve sol boşluk.
      child: Column(
        // Column, widget'leri dikey olarak sıralar.
        children: [
          Container(
            // Container, kategori resmini içerir.
            width: 85, // Genişlik.
            height: 85, // Yükseklik.
            decoration: BoxDecoration(
              color: Colors.grey[300], // Arka plan rengi.
              borderRadius: BorderRadius.circular(20), // Köşe yuvarlaklığı.
            ),
            child: ClipRRect(
              // ClipRRect, resmin köşelerini yuvarlar.
              borderRadius: BorderRadius.circular(20), // Köşe yuvarlaklığı.
              child:
                  Image.asset(imagePath, fit: BoxFit.cover), // Kategori resmi.
            ),
          ),
          const SizedBox(height: 5), // 5 piksel boşluk.
          Text(
            // Kategori başlığı.
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
