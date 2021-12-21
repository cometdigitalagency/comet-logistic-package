import 'package:comet_logistic_package/entities/user.dart';

class UserModel extends User {
  UserModel(
      {required final String id,
      required final String name,
      required final email,
      required final String phoneNumber,
      required final double longtitude,
      required final double latitude,
      required final String language,
      required final int locationType,
      required final String jwtToken,
      required final int roleId})
      : super(
            id: id,
            name: name,
            email: email,
            phoneNumber: phoneNumber,
            longtitude: longtitude,
            latitude: latitude,
            language: language,
            locationType: locationType,
            jwtToken: jwtToken,
            roleId: roleId);
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        longtitude: json['longtitude'],
        latitude: json['latitude'],
        language: json['language'],
        locationType: json['locationType'],
        jwtToken: json['jwtToken'],
        roleId: json['roleId']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'email': email,
        'phoneNumber': phoneNumber,
        'longtitude': longtitude,
        'latitude': latitude,
        'language': language,
        'locationType': locationType,
        'jwtToken': jwtToken,
        'roleId': roleId
      };
}
