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

// It is not named "Order" because Order is duplicated with some package in flutter
class OrderProduct {
  // Initial Value for Order (MUST-HAVE)
  // 'productIdList' is normally used when create order
  final String? description;
  final double price;
  final List<String> productIdList;
  final String customerId;
  final String shopId;

  // Variables below will be queried from database
  final String? id;
  final String? shopName;
  final String? orderStatus;
  final String? riderId;
  final String? riderStatus;
  final List<Product>? productList;
  final bool? paid;
  final bool complete;

  OrderProduct(
      {required this.price,
      required this.productIdList,
      required this.customerId,
      this.description,
      this.id,
      this.productList,
      this.riderId,
      required this.shopId,
      this.shopName,
      this.orderStatus,
      this.riderStatus,
      this.paid,
      required this.complete});
}
