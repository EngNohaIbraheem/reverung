import '../models/featured_doctor_model.dart';

const List<FeaturedDoctorModel> featuredDoctors = [
  FeaturedDoctorModel(
    image: 'assets/images/doctor1.png',
    name: 'Dr. Crick',
    rating: 3.7,
    price: 25,
    isFavorite: false,
  ),
  FeaturedDoctorModel(
    image: 'assets/images/doctor2.png',
    name: 'Dr. Strain',
    rating: 3.5,
    price: 22,
    isFavorite: true,
  ),
  FeaturedDoctorModel(
    image: 'assets/images/doctor3.png',
    name: 'Dr. Lachinet',
    rating: 4.2,
    price: 29,
    isFavorite: false,
  ),
];