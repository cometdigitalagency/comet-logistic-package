import 'package:comet_logistic_package/entities/order_map_entity.dart';

class OrderMapModel extends OrderMap {
  OrderMapModel(
      {final double? customerLongtitude,
      final double? customerLatitude,
      final double? riderLongtitude,
      final double? riderLatitude,
      final double? shopLongtitude,
      final double? shopLatitude})
      : super(
            customerLongtitude: customerLongtitude,
            customerLatitude: customerLatitude,
            riderLongtitude: riderLongtitude,
            riderLatitude: riderLatitude,
            shopLongtitude: shopLongtitude,
            shopLatitude: shopLatitude);
  factory OrderMapModel.fromJson(Map<String, dynamic> json) {
    return OrderMapModel(
        customerLongtitude: json['customerLongtitude'],
        customerLatitude: json['customerLatitude'],
        riderLongtitude: json['riderLongtitude'],
        riderLatitude: json['riderLatitude'],
        shopLongtitude: json['shopLongtitude'],
        shopLatitude: json['shopLatitude']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'customerLongtitude': customerLongtitude,
        'customerLatitude': customerLatitude,
        'riderLongtitude': riderLongtitude,
        'riderLatitude': riderLatitude,
        'shopLongtitude': shopLongtitude,
        'shopLatitude': shopLatitude,
      };
}
