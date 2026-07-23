import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() =>
      _CustomBottomNavigationState();
}

class _CustomBottomNavigationState
    extends State<CustomBottomNavigation> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      currentIndex: currentIndex,

      type: BottomNavigationBarType.fixed,

      selectedItemColor: const Color(0xff10C98E),

      unselectedItemColor: Colors.grey,

      showSelectedLabels: false,

      showUnselectedLabels: false,

      onTap: (index) {
        setState(() {
          currentIndex = index;
        });

        switch (index) {
          case 0:
            break;

          case 1:
          // Favorites Screen
            break;

          case 2:
          // Articles Screen
            break;

          case 3:
          // Chat Screen
            break;
        }
      },

      items: const [

        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: "",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "",
        ),
      ],
    );
  }
}