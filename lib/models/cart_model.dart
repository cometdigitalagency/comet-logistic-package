import 'package:comet_logistic_package/models/selected_product_model.dart';

class CartModel {
  final String? id;
  final String uuid;
  final String shopId;
  final List<SelectedProductModel> selectedProducts;
  final String? description;
  final double price;

  CartModel(
      {this.id,
      required this.uuid,
      required this.shopId,
      required this.selectedProducts,
      this.description,
      required this.price});

  factory CartModel.fromJson(Map<String, dynamic> json) {
    List<SelectedProductModel>? products = [];
    if (json['selectedProducts'] != null) {
      json['selectedProducts'].forEach((m) {
        products.add(SelectedProductModel.fromJson(m));
      });
    }
    return CartModel(
        id: json['_id'],
        uuid: json['uuid'],
        shopId: json['shopId'],
        selectedProducts: products,
        description: json['description'],
        price: json['price'] != null ? json['price'].toDouble() : 0.0);
  }

  Map<String, dynamic> toJson() {
    List jsonSelectedProducts =
        selectedProducts.map((v) => v.toJson()).toList();

    return <String, dynamic>{
      // '_id': id,
      'uuid': uuid,
      'shopId': shopId,
      'selectedProducts': jsonSelectedProducts,
      'description': description,
      'price': price
    };
  }
}
