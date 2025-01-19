import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroll_app/presentation/stroll_bonfire_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stroll Bonfire',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Set the default text theme to Poppins
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme, // Apply Poppins while retaining theme styles
        ),
      ),
      home: const StrollBonfireScreen(),
    );
  }
}
