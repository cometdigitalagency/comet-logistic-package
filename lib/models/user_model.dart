import 'package:comet_logistic_package/entities/user.dart';

class UserModel extends User {
  UserModel(
      {final String? id,
      required final String? name,
      required final email,
      required final String phoneNumber,
      required final double? longtitude,
      required final double? latitude,
      required final String? language,
      required final int? locationType,
      required final String uuid,
      required final String? jwtToken,
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
            uuid: uuid,
            jwtToken: jwtToken,
            roleId: roleId);
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['_id'],
        name: json['name'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        longtitude: json['longtitude'],
        latitude: json['latitude'],
        language: json['language'],
        locationType: json['locationType'],
        uuid: json['uuid'],
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
        'uuid': uuid,
        'jwtToken': jwtToken,
        'roleId': roleId
      };
}
