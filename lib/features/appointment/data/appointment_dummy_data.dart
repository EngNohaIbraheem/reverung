import '../models/appointment_day_model.dart';
import '../models/doctor_model.dart';

const doctor = DoctorModel(
  image: "assets/images/doctor.png",
  name: "Dr. Shruti Kedia",
  speciality: "Upasana Dental Clinic",
  location: "Salt Lake",
  rating: 4.0,
  favorite: true,
);

final appointmentDays = [

  AppointmentDayModel(
    day: "Today, 23 Feb",
    slots: "No slots available",
    selected: false,
  ),

  AppointmentDayModel(
    day: "Tomorrow, 24 Feb",
    slots: "9 slots available",
    selected: true,
  ),

  AppointmentDayModel(
    day: "Thu, 25 Feb",
    slots: "10 slots available",
    selected: false,
  ),
];