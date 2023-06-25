import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled2/Screens/login_screen.dart';
import 'package:untitled2/Screens/profile_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(const Duration(seconds: 3),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => const ProfileScreen()  
            )  
         )  
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/CWN APP.png"),),
    );
  }
}