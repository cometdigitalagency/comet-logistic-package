import 'package:comet_logistic_package/entities/product.dart';

class Shop {
  final String userId;
  final String name;
  final double longtitude;
  final double latitude;
  final List<Product>? productList;
  final String? imgUrl;
  final bool? available;
  final String? id;

  Shop(
      {this.id,
      required this.userId,
      required this.name,
      this.productList,
      this.imgUrl,
      this.available,
      required this.longtitude,
      required this.latitude});
}
