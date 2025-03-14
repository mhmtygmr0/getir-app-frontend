class StockModel {
  int? id;
  int? quantity;
  String? updatedAt;

  StockModel({this.id, this.quantity, this.updatedAt});

  StockModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['quantity'] = quantity;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
