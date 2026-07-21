import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {

  final bool isFavorite;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {

    return Icon(
      isFavorite
          ? Icons.favorite
          : Icons.favorite_border,
      color: isFavorite ? Colors.red : Colors.grey,
    );
  }
}