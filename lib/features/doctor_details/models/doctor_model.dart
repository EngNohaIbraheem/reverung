class DoctorModel {
  final String name;
  final String specialization;
  final String image;
  final double rating;
  final double price;
  final bool isFavorite;

  const DoctorModel({
    required this.name,
    required this.specialization,
    required this.image,
    required this.rating,
    required this.price,
    required this.isFavorite,
  });
}