class DoctorModel {
  final String image;
  final String name;
  final String speciality;
  final String location;
  final double rating;
  final bool favorite;

  const DoctorModel({
    required this.image,
    required this.name,
    required this.speciality,
    required this.location,
    required this.rating,
    required this.favorite,
  });
}