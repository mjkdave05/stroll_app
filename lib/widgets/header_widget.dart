import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55, // Half of the screen height
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/video.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5), // Dark at the top
                  Colors.black.withOpacity(0.0), // Slightly lighter at the middle
                  Colors.black.withOpacity(0.8), // Darkest at the bottom
                ],
                stops: [0.0, 0.5, 1.0], // Defines the positions for each color
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Title, Timer, and People Count
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Title Row with Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Stroll Bonfire',
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFCCC8FF),
                        letterSpacing: 1.2,
                        shadows: [
                          Shadow(
                            blurRadius: 4.0,
                            color: Colors.black38,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down, color: Color(0xFFCCC8FF), size: 25),
                  ],
                ),
                SizedBox(height: 8),
                // Timer and People Count Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.timer_outlined, color: Colors.white, size: 18),
                    SizedBox(width: 4),
                    Text(
                      '22h 00m',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(width: 16),
                    Icon(Icons.person_outline, color: Colors.white, size: 18),
                    SizedBox(width: 4),
                    Text(
                      '103',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Bottom Section with Picture and Text
          Positioned(
            bottom: -18,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.9), // Darkest at the bottom
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.0), // Fades slightly upward
                  ],
                  stops: [0.0, 0.5, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Row(
                children: [
                  // User Image
                  ClipOval(
                    child: Image.asset(
                      'assets/images/photo.png', // Replace with your image path
                      fit: BoxFit.cover,
                      width: 70, // Adjust avatar size
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 8),
                  // User Text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Angelina, 28',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'What is your favorite time\nof the day?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
