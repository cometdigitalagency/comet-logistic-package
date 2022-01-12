import 'package:comet_logistic_package/entities/order_product.dart';
import 'package:comet_logistic_package/entities/vehicle.dart';

class Rider {
  final String? id;
  final String name;
  final String phoneNumber;
  final double? longtitude;
  final double? latitude;
  final String language;
  final String uuid;
  final String? jwtToken;
  final Vehicle? vehicle;
  final List<OrderProduct>? currentOrders;
  final List<OrderProduct>? availableOrders;

  Rider({
    this.id,
    required this.name,
    required this.phoneNumber,
    this.longtitude,
    this.latitude,
    required this.language,
    required this.uuid,
    required this.jwtToken,
    required this.vehicle,
    this.currentOrders,
    this.availableOrders,
  });
}
