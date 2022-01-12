import 'package:comet_logistic_package/entities/order_product.dart';

class Customer {
  final String? id;
  final String? name;
  final String email;
  final String phoneNumber;
  final double? longtitude;
  final double? latitude;
  final String? language;
  final String uuid;
  final String? jwtToken;
  final List<OrderProduct>? currentOrders;
  final List<OrderProduct>? favoriteProducts;

  Customer(
      {this.id,
      this.name,
      required this.email,
      required this.phoneNumber,
      this.longtitude,
      this.latitude,
      this.language,
      required this.uuid,
      this.jwtToken,
      this.currentOrders,
      this.favoriteProducts});
}
