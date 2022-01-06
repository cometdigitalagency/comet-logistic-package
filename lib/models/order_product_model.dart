import 'package:comet_logistic_package/entities/order_product.dart';
import 'package:comet_logistic_package/models/product_model.dart';

class OrderProductModel extends OrderProduct {
  OrderProductModel(
      {final String? id,
      final String? description,
      required final double price,
      required final String orderStatus,
      final String? riderStatus,
      required final List<String> productIdList,
      required final List<ProductModel> productList,
      required final String userId,
      final String? riderId,
      required final String shopId,
      required final String shopName,
      required final bool paid})
      : super(
            id: id,
            description: description,
            price: price,
            orderStatus: orderStatus,
            riderStatus: riderStatus,
            productIdList: productIdList,
            productList: productList,
            userId: userId,
            riderId: riderId,
            shopId: shopId,
            shopName: shopName,
            paid: paid);
  factory OrderProductModel.fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
        id: json['_id'],
        description: json['description'],
        price: json['price'] != null ? json['price'].toDouble() : 0.0,
        orderStatus: json['orderStatus'],
        riderStatus: json['riderStatus'],
        productIdList: json['productIdList'].cast<String>(),
        productList: List.from(json['productList'] ?? [])
          .map((e) => ProductModel.fromJson(e))
          .toList(),
        userId: json['userId'],
        riderId: json['riderId'],
        shopId: json['shopId'],
        shopName: json['shopName'],
        paid: json['paid']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'description': description,
        'price': price,
        'orderStatus': orderStatus,
        'riderStatus': riderStatus,
        'productIdList': productIdList,
        'userId': userId,
        'riderId': riderId,
        'shopId': shopId,
        'shopName': shopName,
        'paid': paid
      };
}
