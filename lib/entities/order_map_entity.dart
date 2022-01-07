import 'package:comet_logistic_package/entities/user_location.dart';

class OrderMap {
  final UserLocation customerLocation;
  final UserLocation riderLocation;
  final UserLocation shopLocation;

  OrderMap({
    required this.customerLocation,
    required this.riderLocation,
    required this.shopLocation,
  });
}
