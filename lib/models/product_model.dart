import 'package:comet_logistic_package/entities/product.dart';
import 'package:comet_logistic_package/entities/product_review.dart';
import 'package:comet_logistic_package/models/product_review_model.dart';
import 'package:comet_logistic_package/models/special_option_model.dart';

class ProductModel extends Product {
  ProductModel({
    final String? id,
    required final String shopId,
    required final String productType,
    required final String name,
    required final String imgUrl,
    required final double price,
    final int? quantity,
    final String? description,
    required final bool available,
    final int? rating,
    final List<SpecialOption>? specialOptions,
    final List<Review>? reviewList,
    final String? deliveryType,
    final bool? deliveryProvince,
  }) : super(
            id: id,
            shopId: shopId,
            productType: productType,
            name: name,
            imgUrl: imgUrl,
            price: price,
            quantity: quantity,
            description: description,
            available: available,
            rating: rating,
            specialOptions: specialOptions,
            reviewList: reviewList,
            deliveryProvince: deliveryProvince,
            deliveryType: deliveryType);
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['_id'],
        shopId: json['shopId'],
        productType: json['productType'],
        name: json['name'],
        imgUrl: json['imgUrl'],
        price: json['price'] != null ? json['price'].toDouble() : 0.0,
        quantity: json['quantity'],
        description: json['desc'],
        available: json['available'],
        rating: json['rating'],
        specialOptions: List.from(json['specialOptions'] ?? [])
            .map((e) => SpecialOption.fromJson(e))
            .toList(),
        reviewList: List.from(json['reviewList'] ?? [])
            .map((e) => ReviewModel.fromJson(e))
            .toList(),
        deliveryProvince: json['deliveryProvince'],
        deliveryType: json['deliveryType']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'shopId': shopId,
        'productType': productType,
        'name': name,
        'imgUrl': imgUrl,
        'price': price,
        'quantity': quantity,
        'description': description,
        'available': available,
        'rating': rating,
        'specialOptions': specialOptions,
        'reviewList': reviewList,
        'deliveryProvince': deliveryProvince,
        'deliveryType': deliveryType
      };
}


// class ProductModel extends Product {
//   ProductModel(
//       {final String? id,
//       required final String shopId,
//       required final String productType,
//       required final String name,
//       required final String imgUrl,
//       required final double price,
//       required final int quantity,
//       final String? desc,
//       required final bool available,
//       final int? rating,
//       final List<SubProduct>? subProductIdList,
//       final List<Review>? reviewList})
//       : super(
//             id: id,
//             shopId: shopId,
//             productType: productType,
//             name: name,
//             imgUrl: imgUrl,
//             price: price,
//             quantity: quantity,
//             desc: desc,
//             available: available,
//             rating: rating,
//             subProductIdList: subProductIdList,
//             reviewList: reviewList);
//   factory ProductModel.fromJson(Map<String, dynamic> json) {
//     return ProductModel(
//         id: json['_id'],
//         shopId: json['shopId'],
//         productType: json['productType'],
//         name: json['name'],
//         imgUrl: json['imgUrl'],
//         price: json['price'] != null ? json['price'].toDouble() : 0.0,
//         quantity: json['quantity'],
//         desc: json['desc'],
//         available: json['available'],
//         rating: json['rating'],
//         subProductIdList: json['subProductIdList'],
//         reviewList: json['reviewList']);
//   }

//   Map<String, dynamic> toJson() => <String, dynamic>{
//         'id': id,
//         'shopId': shopId,
//         'productType': productType,
//         'name': name,
//         'imgUrl': imgUrl,
//         'price': price,
//         'quantity': quantity,
//         'desc': desc,
//         'available': available,
//         'rating': rating,
//         'subProductIdList': subProductIdList,
//         'reviewList': reviewList
//       };
// }
