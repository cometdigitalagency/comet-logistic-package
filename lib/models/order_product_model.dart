import 'package:comet_logistic_package/entities/order_product.dart';
import 'package:comet_logistic_package/models/product_model.dart';

class OrderProductModel extends OrderProduct {
  OrderProductModel(
      {final String? id,
      final String? description,
      required final double price,
      required final String orderStatus,
      required final String riderStatus,
      required final List<String> productIdList,
      required final List<ProductModel> productList,
      required final String userId,
      required final String riderId,
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
            shopName: shopName,
            paid: paid);
  factory OrderProductModel.fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
        id: json['id'],
        description: json['description'],
        price: json['price'],
        orderStatus: json['orderStatus'],
        riderStatus: json['riderStatus'],
        productIdList: json['productIdList'],
        productList: json['productList'],
        userId: json['userId'],
        riderId: json['riderId'],
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
        'shopName': shopName,
        'paid': paid
      };
}
