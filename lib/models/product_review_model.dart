import 'package:comet_logistic_package/entities/product_review.dart';

class ReviewModel extends Review {
  ReviewModel(
      {required final String id,
      required final String username,
      final String? description,
      required final int rating})
      : super(
            id: id,
            username: username,
            description: description,
            rating: rating);
  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
        id: json['id'],
        username: json['username'],
        description: json['description'],
        rating: json['rating']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'username': username,
        'description': description,
        'rating': rating
      };
}
