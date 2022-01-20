import 'package:comet_logistic_package/entities/product.dart';
import 'package:comet_logistic_package/entities/selected_product.dart';
import 'package:comet_logistic_package/models/product_model.dart';
import 'package:comet_logistic_package/models/special_option_model.dart';

class SelectedProductModel extends SelectedProduct {
  SelectedProductModel({
    required final Product product,
    required final int quantity,
    required final double totalPrice,
    required final List<SpecialOption> selectedOption,
  }) : super(
            product: product,
            quantity: quantity,
            totalPrice: totalPrice,
            selectedOption: selectedOption);

  factory SelectedProductModel.fromJson(Map<String, dynamic> json) {
    return SelectedProductModel(
      product: ProductModel.fromJson(json['product']),
      quantity: json['quantity'] != null ? int.parse(json['quantity']) : 0,
      selectedOption: [],
      totalPrice: json['totalPrice'] != null ? json['totalPrice'].toDoube() : 0.0,
    );
  }
}
