import 'package:flutter/material.dart';
import 'package:furniture_app_ui/screens/home_screen.dart';
import 'package:furniture_app_ui/screens/onboarding_screen.dart';

class AppScreen extends StatelessWidget {
  AppScreen({super.key});
  final int selectedScreen = 0;
  final List screens = [OnBoardingScreen(), HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: screens[selectedScreen]);
  }
}
