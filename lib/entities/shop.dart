import 'package:comet_logistic_package/entities/order_product.dart';
import 'package:comet_logistic_package/entities/product.dart';

class Shop {
  final String? id;
  final String name;
  final String phoneNumber;
  final List<Product>? products;
  final String? imageUrl;
  final bool available;
  final double longtitude;
  final double latitude;
  final String language;
  final String uuid;
  final String? jwtToken;
  final List<OrderProduct>? incomingOrderIds;
  final List<OrderProduct>? currentOrderIds;
  final List<OrderProduct>? completeOrderIds;

  Shop(
      {this.id,
      required this.name,
      required this.phoneNumber,
      this.products,
      this.imageUrl,
      required this.available,
      required this.longtitude,
      required this.latitude,
      required this.language,
      required this.uuid,
      required this.jwtToken,
      this.incomingOrderIds,
      this.currentOrderIds,
      this.completeOrderIds});
}
