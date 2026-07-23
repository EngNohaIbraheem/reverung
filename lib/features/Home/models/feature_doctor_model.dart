class FeaturedDoctorModel {
  final String image;
  final String name;
  final double rating;
  final double price;
  final bool isFavorite;

  const FeaturedDoctorModel({
    required this.image,
    required this.name,
    required this.rating,
    required this.price,
    required this.isFavorite,
  });
}