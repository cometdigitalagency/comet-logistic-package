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
      final List<OrderProduct>? incomingOrderIds,
      final List<OrderProduct>? currentOrderIds,
      final List<OrderProduct>? completeOrderIds})
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
            incomingOrderIds: incomingOrderIds,
            currentOrderIds: currentOrderIds,
            completeOrderIds: completeOrderIds);
  factory ShopModel.fromJson(Map<String, dynamic> json) {
    List<Product>? products = [];
    List<OrderProduct>? incomingOrderIds = [];
    List<OrderProduct>? currentOrderIds = [];
    List<OrderProduct>? completeOrderIds = [];

    if (json['products'] != null) {
      json['products'].forEach((m) {
        products.add(ProductModel.fromJson(m));
      });
    }
    if (json['incomingOrderIds'] != null) {
      json['incomingOrderIds'].forEach((m) {
        incomingOrderIds.add(OrderProductModel.fromJson(m));
      });
    }
    if (json['currentOrderIds'] != null) {
      json['currentOrderIds'].forEach((m) {
        currentOrderIds.add(OrderProductModel.fromJson(m));
      });
    }
    if (json['completeOrderIds'] != null) {
      json['completeOrderIds'].forEach((m) {
        completeOrderIds.add(OrderProductModel.fromJson(m));
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
        incomingOrderIds: incomingOrderIds,
        currentOrderIds: currentOrderIds,
        completeOrderIds: completeOrderIds);
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
        'incomingOrderIds': incomingOrderIds,
        'currentOrderIds': currentOrderIds,
        'completeOrderIds': completeOrderIds
      };
}
