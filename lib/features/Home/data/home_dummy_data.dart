import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/doctor_model.dart';

final liveDoctors = [
  DoctorModel(
    name: "Dr. Crick",
    specialty: "Cardiology",
    image: "assets/images/live1.png",
    rating: 4.5,
    price: 20,
    isLive: true,
  ),
  DoctorModel(
    name: "Dr. Strain",
    specialty: "Dentist",
    image: "assets/images/live2.png",
    rating: 4.8,
    price: 18,
    isLive: true,
  ),
  DoctorModel(
    name: "Dr. Lachinet",
    specialty: "Surgery",
    image: "assets/images/live3.png",
    rating: 4.7,
    price: 22,
    isLive: true,
  ),
];

final popularDoctors = [
  DoctorModel(
    name: "Dr. Fillerup Grab",
    specialty: "Medicine Specialist",
    image: "assets/images/popular1.png",
    rating: 5,
    price: 30,
  ),
  DoctorModel(
    name: "Dr. Blessing",
    specialty: "Dentist Specialist",
    image: "assets/images/popular2.png",
    rating: 5,
    price: 25,
  ),
];

final featuredDoctors = [
  DoctorModel(
    name: "Dr. Crick",
    specialty: "Cardiology",
    image: "assets/images/doctor1.png",
    rating: 3.7,
    price: 25,
    isFavorite: false,
  ),
  DoctorModel(
    name: "Dr. Strain",
    specialty: "Dentist",
    image: "assets/images/doctor2.png",
    rating: 3,
    price: 22,
    isFavorite: true,
  ),
  DoctorModel(
    name: "Dr. Lachinet",
    specialty: "Surgery",
    image: "assets/images/doctor3.png",
    rating: 2.9,
    price: 29,
    isFavorite: false,
  ),
];

final categories = [
  CategoryModel(
    icon: Icons.medication,
    color: Colors.blue,
  ),
  CategoryModel(
    icon: Icons.favorite,
    color: Colors.green,
  ),
  CategoryModel(
    icon: Icons.remove_red_eye,
    color: Colors.orange,
  ),
  CategoryModel(
    icon: Icons.pregnant_woman,
    color: Colors.red,
  ),
];