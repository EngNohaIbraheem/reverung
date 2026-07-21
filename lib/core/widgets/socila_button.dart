import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final String asset;
  final VoidCallback? onPressed;

  const SocialButton({
    super.key,
    required this.title,
    required this.asset,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,

      borderRadius: BorderRadius.circular(12),

      child: Container(
        height: 60,

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(12),

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.08),
              blurRadius: 15,
            )
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              asset,
              width: 24,
            ),

            const SizedBox(width: 10),

            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                color: Color(0xff677294),
              ),
            ),
          ],
        ),
      ),
    );
  }
}