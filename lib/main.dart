

/*
import 'package:flutter/material.dart';
import 'navigator.dart'; // Import the navigator.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Management',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black, // Background color
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, // AppBar color
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black, // Bottom navigation background
          selectedItemColor: Color.fromRGBO(255, 179, 0, 1), // Selected icon color
          unselectedItemColor: Colors.grey, // Unselected icon color
        ),
      ),
      home: const MainNavigator(), // Load the bottom navigation bar
    );
  }
}
*/




import 'package:flutter/material.dart';
import 'loading_screen.dart'; // Import the loading screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Management',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Color.fromRGBO(255, 179, 0, 1),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const LoadingScreen(), // Show loading screen first
    );
  }
}
