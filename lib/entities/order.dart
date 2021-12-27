enum OrderStatus {
  pending,
  accepted,
  preparing,
  delivering,
  arrived,
  completed
}

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

class Order {
  final String? id;
  final String? description;
  final double price;
  final OrderStatus status;
  final List<String>? productIdList;
  final String userId;
  final String riderId;
  final bool paid;

  Order({
    this.id,
    this.description,
    required this.price,
    required this.status,
    required this.productIdList,
    required this.userId,
    required this.riderId,
    required this.paid,
  });
}
