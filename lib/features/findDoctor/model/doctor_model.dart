class DoctorModel {
  final String image;
  final String name;
  final String speciality;
  final int experience;
  final int rating;
  final int patients;
  final String availableTime;
  final bool isFavorite;

  const DoctorModel({
    required this.image,
    required this.name,
    required this.speciality,
    required this.experience,
    required this.rating,
    required this.patients,
    required this.availableTime,
    required this.isFavorite,
  });
}