import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/screen/introduction/onboarding_view_1.dart';
import 'package:looking_for_a_custom_app/screen/introduction/onboarding_view_3.dart';
import 'package:looking_for_a_custom_app/screen/introduction/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Looking for a custom app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 75, 66, 90)),
        useMaterial3: true,
      ),
      home: OnBoarding(),
    );
  }
}
