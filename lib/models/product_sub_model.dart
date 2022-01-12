import 'package:comet_logistic_package/entities/product_sub.dart';

class SubProductModel extends SubProduct {
  SubProductModel(
      {final String? id,
      required final String productId,
      required final String name,
      final String? description,
      required final double price})
      : super(
            id: id,
            productId: productId,
            name: name,
            description: description,
            price: price);
  factory SubProductModel.fromJson(Map<String, dynamic> json) {
    return SubProductModel(
        id: json['_id'],
        productId: json['productId'],
        name: json['name'],
        description: json['description'],
        price: json['price']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        '_id': id,
        'productId': productId,
        'name': name,
        'description': description,
        'price': price
      };
}
