class Review {
  final String id;
  final String username;
  final String? description;

  // MAX RATING = 5
  final int rating;

  Review(
      {required this.id,
      required this.username,
      required this.description,
      required this.rating});
}
