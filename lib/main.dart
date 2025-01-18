import 'package:flutter/material.dart';
import 'package:stroll_app/presentation/stroll_bonfire_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stroll Bonfire',
      theme: ThemeData(

      ),
      home: StrollBonfirePage(),
    );
  }
}
