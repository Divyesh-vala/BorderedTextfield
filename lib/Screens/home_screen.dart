import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.people)),
        BottomNavigationBarItem(icon: Icon(Icons.map)),
      ]),
    );
  }
}