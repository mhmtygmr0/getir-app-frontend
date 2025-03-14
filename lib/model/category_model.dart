import 'package:getir_app/model/product_model.dart';

class CategoryModel {
  int? id;
  String? name;
  String? imageUrl;
  List<ProductModel>? productList;

  CategoryModel({this.id, this.name, this.imageUrl, this.productList});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    if (json['productList'] != null) {
      productList = <ProductModel>[];
      json['productList'].forEach((v) {
        productList!.add(ProductModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['imageUrl'] = imageUrl;
    if (productList != null) {
      data['productList'] = productList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
