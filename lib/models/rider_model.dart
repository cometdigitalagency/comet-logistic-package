import 'package:comet_logistic_package/entities/order_product.dart';
import 'package:comet_logistic_package/entities/rider.dart';
import 'package:comet_logistic_package/entities/vehicle.dart';

import 'order_product_model.dart';

class RiderModel extends Rider {
  RiderModel(
      {final String? id,
      required final String name,
      required final String phoneNumber,
      final double? longtitude,
      final double? latitude,
      required final String language,
      required final String uuid,
      required final String? jwtToken,
      final Vehicle? vehicle,
      final List<OrderProduct>? currentOrders,
      final List<OrderProduct>? availableOrders})
      : super(
            id: id,
            name: name,
            phoneNumber: phoneNumber,
            longtitude: longtitude,
            latitude: latitude,
            language: language,
            uuid: uuid,
            jwtToken: jwtToken,
            vehicle: vehicle,
            currentOrders: currentOrders,
            availableOrders: availableOrders);
  factory RiderModel.fromJson(Map<String, dynamic> json) {
    List<OrderProductModel>? currentOrders = [];
    List<OrderProductModel>? availableOrders = [];
    if (json['currentOrders'] != null) {
      json['currentOrders'].forEach((m) {
        currentOrders.add(OrderProductModel.fromJson(m));
      });
    }

    if (json['availableOrders'] != null) {
      json['availableOrders'].forEach((m) {
        availableOrders.add(OrderProductModel.fromJson(m));
      });
    }
    return RiderModel(
        id: json['_id'],
        name: json['name'],
        phoneNumber: json['phoneNumber'],
        longtitude: json['longtitude'],
        latitude: json['latitude'],
        language: json['language'],
        uuid: json['uuid'],
        jwtToken: json['jwtToken'],
        currentOrders: currentOrders,
        availableOrders: availableOrders);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        '_id': id,
        'name': name,
        'phoneNumber': phoneNumber,
        'longtitude': longtitude,
        'latitude': latitude,
        'language': language,
        'uuid': uuid,
        'jwtToken': jwtToken,
        'vehicle': vehicle,
        'currentOrders': currentOrders,
        'availableOrders': availableOrders
      };
}
