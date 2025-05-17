//

import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNav({super.key, required this.currentIndex});

  void _navigate(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/intro');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/grid');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/cart');
        break;
      case 3:
        Navigator.popUntil(context, ModalRoute.withName('/'));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF53B175),
      unselectedItemColor: Colors.grey,
      onTap: (index) => _navigate(index, context),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Products'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Exit'),
      ],
    );
  }
}


