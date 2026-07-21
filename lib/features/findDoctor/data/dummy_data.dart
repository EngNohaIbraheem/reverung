import '../models/doctor_model.dart';

final doctors = [

  DoctorModel(
    image: "assets/images/doc1.png",
    name: "Dr. Shruti Kedia",
    speciality: "Tooths Dentist",
    experience: 7,
    rating: 87,
    patients: 69,
    availableTime: "10:00 AM",
    isFavorite: true,
  ),

  DoctorModel(
    image: "assets/images/doc2.png",
    name: "Dr. Watamaniuk",
    speciality: "Tooths Dentist",
    experience: 9,
    rating: 74,
    patients: 78,
    availableTime: "12:00 AM",
    isFavorite: false,
  ),

  DoctorModel(
    image: "assets/images/doc3.png",
    name: "Dr. Crownover",
    speciality: "Tooths Dentist",
    experience: 5,
    rating: 59,
    patients: 86,
    availableTime: "11:00 AM",
    isFavorite: true,
  ),

];