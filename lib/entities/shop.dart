class Shop {
  final String id;
  final String userId;
  final String name;
  final List<String>? productIdList;
  final String? imgUrl;
  final bool? available;
  final double longtitude;
  final double latitude;

  Shop(
      {required this.id,
      required this.userId,
      required this.name,
      required this.productIdList,
      required this.imgUrl,
      required this.available,
      required this.longtitude,
      required this.latitude});
}
