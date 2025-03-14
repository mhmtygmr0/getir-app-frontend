class ProductModel {
  int? id;
  String? name;
  String? description;
  double? price;
  int? categoryId;
  int? stockQuantity;

  ProductModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.categoryId,
      this.stockQuantity});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    categoryId = json['categoryId'];
    stockQuantity = json['stockQuantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['categoryId'] = categoryId;
    data['stockQuantity'] = stockQuantity;
    return data;
  }
}
