import 'package:comet_logistic_package/entities/product.dart';
import 'package:comet_logistic_package/entities/shop.dart';

class ShopModel extends Shop {
  ShopModel(
      {final String? id,
      required final String userId,
      required final name,
      final List<Product>? productList,
      final String? imgUrl,
      final bool? available,
      required final double longtitude,
      required final double latitude})
      : super(
            id: id,
            userId: userId,
            name: name,
            productList: productList,
            imgUrl: imgUrl,
            available: available,
            longtitude: longtitude,
            latitude: latitude);
  factory ShopModel.fromJson(Map<String, dynamic> json) {
    return ShopModel(
        id: json['_id'],
        userId: json['userId'],
        name: json['name'],
        productList: json['productList'],
        imgUrl: json['imgUrl'],
        available: json['available'],
        longtitude: json['longtitude'],
        latitude: json['latitude']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'userId': userId,
        'name': name,
        'productList': productList,
        'imgUrl': imgUrl,
        'available': available,
        'longtitude': longtitude,
        'latitude': latitude
      };
}
