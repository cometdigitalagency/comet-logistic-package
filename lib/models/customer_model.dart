import 'package:comet_logistic_package/entities/customer.dart';
import 'package:comet_logistic_package/entities/order_product.dart';

import 'order_product_model.dart';

class CustomerModel extends Customer {
  CustomerModel(
      {final String? id,
      final String? name,
      required final String email,
      required final String phoneNumber,
      final double? longtitude,
      final double? latitude,
      final String? language,
      required final String uuid,
      final String? jwtToken,
      final List<OrderProduct>? currentOrders,
      final List<OrderProduct>? favoriteProducts})
      : super(
            id: id,
            name: name,
            email: email,
            phoneNumber: phoneNumber,
            longtitude: longtitude,
            latitude: latitude,
            language: language,
            uuid: uuid,
            jwtToken: jwtToken,
            currentOrders: currentOrders,
            favoriteProducts: favoriteProducts);
  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    List<OrderProductModel>? currentOrders = [];
    List<OrderProductModel>? favoriteProducts = [];
    if (json['currentOrders'] != null) {
      json['currentOrders'].forEach((m) {
        currentOrders.add(OrderProductModel.fromJson(m));
      });
    }

    if (json['favoriteProducts'] != null) {
      json['favoriteProducts'].forEach((m) {
        favoriteProducts.add(OrderProductModel.fromJson(m));
      });
    }
    return CustomerModel(
        id: json['_id'],
        name: json['name'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        longtitude: json['longtitude'],
        latitude: json['latitude'],
        language: json['language'],
        uuid: json['uuid'],
        jwtToken: json['jwtToken'],
        currentOrders: currentOrders,
        favoriteProducts: favoriteProducts);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        '_id': id,
        'name': name,
        'email': email,
        'phoneNumber': phoneNumber,
        'longtitude': longtitude,
        'latitude': latitude,
        'language': language,
        'uuid': uuid,
        'jwtToken': jwtToken,
        'currentOrders': currentOrders,
        'favoriteProducts': favoriteProducts
      };
}
