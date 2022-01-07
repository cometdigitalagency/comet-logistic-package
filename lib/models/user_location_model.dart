import 'package:comet_logistic_package/entities/user_location.dart';

class UserLocationModel extends UserLocation {
  UserLocationModel(
      {required final double longtitude, required final double latitude})
      : super(longtitude: longtitude, latitude: latitude);
  factory UserLocationModel.fromJson(Map<String, dynamic> json) {
    return UserLocationModel(
        longtitude: json['longtitude'], latitude: json['latitude']);
  }

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'longtitude': longtitude, 'latitude': latitude};
}
