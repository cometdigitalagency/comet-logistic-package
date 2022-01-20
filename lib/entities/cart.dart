import 'package:comet_logistic_package/entities/selected_product.dart';

class Cart {
  final String? id;
  final String uuid;
  final String shopId;
  final List<SelectedProduct> selectedProducts;
  final String? description;
  final double price;

  Cart(
      {this.id,
      required this.uuid,
      required this.shopId,
      required this.selectedProducts,
      this.description,
      required this.price});
}
