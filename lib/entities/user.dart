class User {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final double? longtitude;
  final double? latitude;
  final String? language;
  final int? locationType;
  final String uuid;
  final String? jwtToken;
  final int roleId;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.longtitude,
      required this.latitude,
      required this.language,
      required this.locationType,
      required this.uuid,
      required this.jwtToken,
      required this.roleId});
}
