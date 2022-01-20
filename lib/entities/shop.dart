import 'package:comet_logistic_package/entities/order_product.dart';
import 'package:comet_logistic_package/entities/product.dart';

class Shop {
  final String? id;
  final int roleId;
  final String category;
  final String name;
  final String phoneNumber;
  final List<Product>? products;
  final String? imgUrl;
  final bool available;
  final double longtitude;
  final double latitude;
  final String language;
  final String uuid;
  final String? jwtToken;
  final List<OrderProduct>? orders;

  Shop(
      {this.id,
      this.roleId = 2,
      required this.category,
      required this.name,
      required this.phoneNumber,
      this.products,
      this.imgUrl,
      required this.available,
      required this.longtitude,
      required this.latitude,
      required this.language,
      required this.uuid,
      required this.jwtToken,
      this.orders});
}
