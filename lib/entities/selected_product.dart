import 'package:comet_logistic_package/entities/product.dart';
import 'package:comet_logistic_package/models/special_option_model.dart';

class SelectedProduct {
  final Product product;
  final int quantity;
  final double totalPrice;
  final List<SpecialOption> selectedOption;

  SelectedProduct(
      {required this.product,
      required this.quantity,
      required this.totalPrice,
      required this.selectedOption});
}
