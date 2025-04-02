import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
// ignore: unused_import
import 'screens/unit_types_screen.dart';

void main() {
  runApp(const UnitifyApp());
}

class UnitifyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const UnitifyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unitify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}
