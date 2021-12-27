class SubProduct {
  final String? id;
  final String productId;
  final String name;
  final String? description;
  final double price;

  SubProduct(
      {this.id,
      required this.productId,
      required this.name,
      this.description,
      required this.price});
}
