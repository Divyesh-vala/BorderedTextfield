import 'package:flutter/material.dart';
import 'package:untitled2/Screens/splash_screen.dart';

void main() {
  runApp(GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const MaterialApp(home: SplashScreen())));
}