import 'package:comet_logistic_package/entities/vehicle.dart';

import 'order_product_model.dart';

class VehicleModel extends Vehicle {
  VehicleModel(
      {final String? id,
      required final String license,
      required final String brand,
      required final String type,
      required final String color,
      final String? riderId,
      final String? status})
      : super(
            id: id,
            license: license,
            brand: brand,
            type: type,
            color: color,
            riderId: riderId,
            status: status);

  factory VehicleModel.fromJson(Map<String, dynamic> json) {
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
    return VehicleModel(
        id: json['id'],
        license: json['license'],
        brand: json['brand'],
        type: json['type'],
        color: json['color'],
        riderId: json['riderId'],
        status: json['status']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'license': license,
        'brand': brand,
        'type': type,
        'color': color,
        'riderId': riderId,
        'status': status
      };
}
