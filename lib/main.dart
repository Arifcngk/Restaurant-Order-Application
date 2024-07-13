import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/screen/auth/login_page_view.dart';
import 'package:looking_for_a_custom_app/screen/introduction/onboarding_intro_view.dart';

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
      home: LoginPageView(),
    );
  }
}
