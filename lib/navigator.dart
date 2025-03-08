/*import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//import 'home.dart'; // Import actual pages
import 'profile.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;

  // Colors for inactive and active icons
  final Color iconInactiveColor = Colors.grey;
  final Color iconActiveColor = Color.fromRGBO(255, 179, 0, 1);

  // Pages for navigation
  final List<Widget> _pages = [
    Center(child: Text("Home Page", style: TextStyle(fontSize: 24))), // Placeholder for future
     Center(child: Text("Future Implementation", style: TextStyle(fontSize: 24))), // Placeholder for future
     Profile(),   // Profile page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display selected page
      bottomNavigationBar: Container(
        color: Colors.white, // Background color for nav bar
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Padding for better spacing
        child: GNav(
          selectedIndex: _selectedIndex, // Track selected tab
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          activeColor: iconActiveColor, // Active color for icon & text
          color: iconInactiveColor, // Default color for inactive icons
          iconSize: 24, // Size of icons
          backgroundColor: Colors.white, // Nav bar background color
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding inside buttons
          gap: 8, // Space between icon & text
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
            ),
            GButton(
              icon: Icons.admin_panel_settings,
              text: "Future",
            ),
            GButton(
              icon: Icons.person_outline,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
*/
//import 'package:admin_hostie/admin.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'profile.dart'; // Import your Profile page

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;

  // Colors for active and inactive icons in dark mode
  final Color iconInactiveColor = Colors.grey;
  final Color iconActiveColor = Color.fromRGBO(255, 179, 0, 1);

  // Pages for navigation
  static final List<Widget> _pages = <Widget>[
    const Center(child: Text("Home Page", style: TextStyle(fontSize: 24))), // Placeholder for Home
    const Center(child: Text("ADMIN WARDEN APPROVAL", style: TextStyle(fontSize: 24))), // Placeholder for Future
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to dark
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: Container(
        color: Colors.black, // Background color for nav bar
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Padding for better spacing
        child: GNav(
          selectedIndex: _selectedIndex, // Track selected tab
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          activeColor: iconActiveColor, // Active icon color
          color: iconInactiveColor, // Default color for inactive icons
          iconSize: 24, // Size of icons
          backgroundColor: Colors.black, // Nav bar background color
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding inside buttons
          gap: 8, // Space between icon & text
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
            ),
            GButton(
              icon: Icons.admin_panel_settings,
              text: "Admin",
            ),
            GButton(
              icon: Icons.person_outline,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
