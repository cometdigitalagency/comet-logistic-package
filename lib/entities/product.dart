import 'package:comet_logistic_package/entities/product_review.dart';
import 'package:comet_logistic_package/entities/product_sub.dart';

class Product {
  final String? id;
  final String shopId;

  // TODO : type should be enum
  final String productType;
  final String name;
  final String imgUrl;
  final double price;
  final int quantity;
  final String? desc;
  final bool available;
  final int? rating;
  final List<SubProduct>? subProductIdList;
  final List<Review>? reviewList;

  Product({
    this.id,
    required this.shopId,
    required this.productType,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.quantity,
    this.desc,
    required this.available,
    this.rating,
    this.subProductIdList,
    this.reviewList,
  });
}
