import 'package:comet_logistic_package/entities/order.dart';

class OrderModel extends Order {
  OrderModel(
      {final String? id,
      final String? description,
      required final double price,
      required final OrderStatus status,
      final List<String>? productIdList,
      required final String userId,
      required final String riderId,
      required final bool paid})
      : super(
            id: id,
            description: description,
            price: price,
            status: status,
            productIdList: productIdList,
            userId: userId,
            riderId: riderId,
            paid: paid);
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
        id: json['id'],
        description: json['description'],
        price: json['price'],
        status: json['status'],
        productIdList: json['productIdList'],
        userId: json['userId'],
        riderId: json['riderId'],
        paid: json['paid']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'description': description,
        'price': price,
        'status': status,
        'productIdList': productIdList,
        'userId': userId,
        'riderId': riderId,
        'paid': paid
      };
}
