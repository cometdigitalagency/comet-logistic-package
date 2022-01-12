import 'package:comet_logistic_package/entities/order_map_entity.dart';
import 'package:comet_logistic_package/entities/user_location.dart';
import 'package:comet_logistic_package/models/user_location_model.dart';

class OrderMapModel extends OrderMap {
  OrderMapModel(
      {required final UserLocation customerLocation,
      required final UserLocation riderLocation,
      required final UserLocation shopLocation})
      : super(
            customerLocation: customerLocation,
            riderLocation: riderLocation,
            shopLocation: shopLocation);
  factory OrderMapModel.fromJson(Map<String, dynamic> json) {
    return OrderMapModel(
        customerLocation: UserLocationModel.fromJson(json['customerLocation']),
        riderLocation: UserLocationModel.fromJson(json['riderLocation']),
        shopLocation: UserLocationModel.fromJson(json['shopLocation']));
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'customerLocation': customerLocation,
        'riderLocation': riderLocation,
        'shopLocation': shopLocation,
      };
}
