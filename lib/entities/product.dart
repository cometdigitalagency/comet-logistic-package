import 'package:comet_logistic_package/entities/product_review.dart';
import 'package:comet_logistic_package/models/special_option_model.dart';

class Product {
  final String? id;
  final String shopId;
  final String productType;
  final String name;
  final String imgUrl;
  final double price;
  final int? quantity;
  final String? description;
  final bool available;
  final int? rating;
  final List<SpecialOption>? specialOptions;
  final List<Review>? reviewList;

  Product({
    this.id,
    required this.shopId,
    required this.productType,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.quantity,
    this.description,
    required this.available,
    this.rating,
    this.specialOptions,
    this.reviewList,
  });
}
