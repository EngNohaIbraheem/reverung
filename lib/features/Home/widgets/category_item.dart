import 'package:flutter/material.dart';

import '../models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Icon(
        category.icon,
        color: Colors.white,
        size: 34,
      ),
    );
  }
}