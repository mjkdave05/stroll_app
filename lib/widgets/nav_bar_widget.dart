import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF0F1115), // Background color of the bar
      selectedItemColor: const Color(0xFF9C88FF), // Selected icon color
      unselectedItemColor: Colors.grey, // Unselected icon color
      showSelectedLabels: false, // Hides labels when selected
      showUnselectedLabels: false, // Hides labels when not selected
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/Card.svg',
            width: 40,
            height: 40,
            colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            'assets/images/Card.svg',
            width: 40,
            height: 40,
            colorFilter: const ColorFilter.mode(Color(0xFF9C88FF), BlendMode.srcIn),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/bonfire.svg',
            width: 40,
            height: 40,
            colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            'assets/images/bonfire.svg',
            width: 40,
            height: 40,
            colorFilter: const ColorFilter.mode(Color(0xFF9C88FF), BlendMode.srcIn),
          ),
          label: 'Bonfire',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/Chat.png', // PNG for inactive state
            width: 40,
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/Chat.png', // PNG for active state
            width: 40,
            height: 40,
          ),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.person_outline,
            color: Colors.grey,
            size: 35,
          ),
          activeIcon: const Icon(
            Icons.person,
            color: Color(0xFF9C88FF),
            size: 35,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
