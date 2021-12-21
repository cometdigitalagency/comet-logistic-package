enum ProductType { food, grocery }

class Product {
  final String id;
  final String shopId;

  // TODO : type should be enum
  final ProductType type;
  final String name;
  final String imgUrl;
  final double price;
  final int quantity;
  final String? desc;
  final bool available;
  final int? rating;
  final List<String>? subProductIdList;
  final List<String>? reviewList;

  Product({
    required this.id,
    required this.shopId,
    required this.type,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.quantity,
    this.desc,
    required this.available,
    required this.rating,
    required this.subProductIdList,
    required this.reviewList,
  });
}
