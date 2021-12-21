import 'package:comet_logistic_package/entities/product.dart';

class ProductModel extends Product {
  ProductModel(
      {required final String id,
      required final String shopId,
      required final ProductType type,
      required final String name,
      required final String imgUrl,
      required final double price,
      required final int quantity,
      final String? desc,
      required final bool available,
      final int? rating,
      final List<String>? subProductIdList,
      final List<String>? reviewList})
      : super(
            id: id,
            shopId: shopId,
            type: type,
            name: name,
            imgUrl: imgUrl,
            price: price,
            quantity: quantity,
            desc: desc,
            available: available,
            rating: rating,
            subProductIdList: subProductIdList,
            reviewList: reviewList);
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        shopId: json['shopId'],
        type: json['type'],
        name: json['name'],
        imgUrl: json['imgUrl'],
        price: json['price'],
        quantity: json['quantity'],
        desc: json['desc'],
        available: json['available'],
        rating: json['rating'],
        subProductIdList: json['subProductIdList'],
        reviewList: json['reviewList']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'shopId': shopId,
        'type': type,
        'name': name,
        'imgUrl': imgUrl,
        'price': price,
        'quantity': quantity,
        'desc': desc,
        'available': available,
        'rating': rating,
        'subProductIdList': subProductIdList,
        'reviewList': reviewList
      };
}
