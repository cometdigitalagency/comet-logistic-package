import 'package:comet_logistic_package/entities/order_product.dart';
import 'package:comet_logistic_package/entities/product.dart';
import 'package:comet_logistic_package/entities/shop.dart';

import 'order_product_model.dart';
import 'product_model.dart';

class ShopModel extends Shop {
  ShopModel(
      {final String? id,
      required final String name,
      required final String phoneNumber,
      final List<Product>? products,
      final String? imageUrl,
      required final bool available,
      required final double longtitude,
      required final double latitude,
      required final String language,
      required final String uuid,
      final String? jwtToken,
      final List<OrderProduct>? orders})
      : super(
            id: id,
            name: name,
            phoneNumber: phoneNumber,
            products: products,
            imageUrl: imageUrl,
            available: available,
            longtitude: longtitude,
            latitude: latitude,
            language: language,
            uuid: uuid,
            jwtToken: jwtToken,
            orders: orders);
  factory ShopModel.fromJson(Map<String, dynamic> json) {
    List<Product>? products = [];
    List<OrderProduct>? orders = [];

    if (json['products'] != null) {
      json['products'].forEach((m) {
        products.add(ProductModel.fromJson(m));
      });
    }
    if (json['orders'] != null) {
      json['orders'].forEach((m) {
        orders.add(OrderProductModel.fromJson(m));
      });
    }

    return ShopModel(
        id: json['_id'],
        name: json['name'],
        phoneNumber: json['phoneNumber'],
        products: products,
        imageUrl: json['imageUrl'],
        available: json['available'],
        longtitude: json['longtitude'],
        latitude: json['latitude'],
        language: json['language'],
        uuid: json['uuid'],
        jwtToken: json['jwtToken'],
        orders: orders);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        '_id': id,
        'name': name,
        'phoneNumber': phoneNumber,
        'products': products,
        'imageUrl': imageUrl,
        'available': available,
        'longtitude': longtitude,
        'latitude': latitude,
        'language': language,
        'uuid': uuid,
        'jwtToken': jwtToken,
        'orders': orders,
      };
}
