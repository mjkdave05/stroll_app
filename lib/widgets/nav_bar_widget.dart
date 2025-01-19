import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF0F1115),
          icon: SvgPicture.asset(
            'assets/icons/Card.svg',
            width: 24,
            height: 24,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/bonfire.svg',
            width: 24,
            height: 24,
          ),
          label: 'Bonfire',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/message.svg',
            width: 24,
            height: 24,
          ),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline), // You can replace this with another SVG if needed.
          label: 'Profile',
        ),
      ],
    );
  }
}
