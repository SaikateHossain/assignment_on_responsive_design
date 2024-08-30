import 'package:assignment_on_responsive_design/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RSAApp());
}

class RSAApp extends StatelessWidget {
  const RSAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
