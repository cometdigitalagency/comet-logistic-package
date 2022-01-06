/* 
  Note :
  * rider_id assign & update from BO
  * coupon_id (optional)
  * status number explain : 
    0 pending, (rider can accept order after the order is readied by retailer, product_status == "ready") 
    1 rider accepted,
    2 preparing product,
    3 rider received product and delivering,
    4 rider arrived location
    5 order is complete 
*/

import 'package:comet_logistic_package/entities/product.dart';

class OrderProduct {
  // Initial Value for Order
  // 'productIdList' is normally used when create order
  final String? description;
  final double price;
  final List<String> productIdList;
  final String userId;
   final String shopId;

  // Variables below will be queried from database
  final String? id;
  final String? shopName;
  final String? orderStatus;
  final String? riderId;
  final String? riderStatus;
  final List<Product>? productList;
  final bool? paid;

  OrderProduct({
    required this.price,
    required this.productIdList,
    required this.userId,
    this.description,
    this.id,
    this.productList,
    this.riderId,
    required this.shopId,
    this.shopName,
    this.orderStatus,
    this.riderStatus,
    this.paid,
  });
}
