import 'package:comet_logistic_package/entities/selected_product.dart';
import 'package:comet_logistic_package/models/product_model.dart';
import 'package:comet_logistic_package/models/special_option_model.dart';

class SelectedProductModel extends SelectedProduct {
  SelectedProductModel({
    required final ProductModel productModel,
    required final int quantity,
    // total Price of THE PRODUCT
    required final double totalPrice,
    required final List<SpecialOption> selectedOption,
  }) : super(
            product: productModel,
            quantity: quantity,
            totalPrice: totalPrice,
            selectedOption: selectedOption);

  factory SelectedProductModel.fromJson(Map<String, dynamic> json) {
    return SelectedProductModel(
      productModel: ProductModel.fromJson(json['product']),
      quantity: json['quantity'] != null ? int.parse(json['quantity']) : 0,
      selectedOption: List.from(json['selectedOption'] ?? [])
          .map((e) => SpecialOption.fromJson(e))
          .toList(),
      totalPrice:
          json['totalPrice'] != null ? json['totalPrice'].toDoube() : 0.0,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'product': product,
        'quantity': quantity,
        'selectedOption': selectedOption.map((v) => v.toJson()).toList(),
        'totalPrice': totalPrice
      };
}
