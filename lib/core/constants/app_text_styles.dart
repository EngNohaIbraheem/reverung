import 'package:flutter/material.dart';
import 'app_coclors.dart';

class AppTextStyles {
  static var title = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static var body = TextStyle(
    fontSize: 18,
    color: AppColors.subText,
    height: 1.5,
  );

  static const button = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );

  static var skip = TextStyle(
    color: AppColors.subText,
    fontSize: 18,
  );
}