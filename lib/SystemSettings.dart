import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark mode background
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.grey[900], // Dark mode navbar
      ),
      body: Center(  
        child: Column(   // Column to hold both image and text
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Image
            CircleAvatar(
            radius: 190,  // Image size
              backgroundImage: AssetImage("assets/das2.png"), // Ensure this image is in assets
            ),
            const SizedBox(height: 20),  // Spacing

            // Text Below Image
            const Text(
              "Features oke odene varum Mechu..!!",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
