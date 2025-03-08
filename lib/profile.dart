/*import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        title: const Text("Admin Profile"),
        backgroundColor: Colors.grey[900], // Darker navbar
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/dass.png"), // Ensure image is in assets
            ),
            const SizedBox(height: 10),

            // Admin Name
            const Text(
              "Aravind Das",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),

            // Admin Email
            Text(
              "aravindsheshh@bestie.com",
              style: TextStyle(color: Colors.grey[400], fontSize: 16),
            ),
            const SizedBox(height: 20),
             Text(
              "ADMIN ID : 100239",
              style: TextStyle(color: Colors.grey[400], fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Admin Role
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[850], // Dark grey background
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.admin_panel_settings, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Role: Admin",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space before options

            // Action Buttons
            Expanded(
              child: ListView(
                children: [
                  _buildOption(Icons.settings, "System Settings"),
                  
                  const Divider(color: Colors.grey), // Divider
                  _buildOption(Icons.lock, "Change Password"),
                  _buildOption(Icons.logout, "Logout", isLogout: true, context: context),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for List Items
  Widget _buildOption(IconData icon, String title, {bool isLogout = false, BuildContext? context}) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.white),
      title: Text(
        title,
        style: TextStyle(color: isLogout ? Colors.red : Colors.white, fontSize: 18),
      ),
      onTap: () {
        if (isLogout && context != null) {
          _showLogoutDialog(context); // Show confirmation dialog
        }
      },
    );
  }

  // Logout Confirmation Dialog
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Logout"),
          content: const Text("Are you sure you want to log out from this masterpiece app?"),
          backgroundColor: Colors.grey[900], // Dark mode dialog
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          contentTextStyle: const TextStyle(color: Colors.white, fontSize: 16),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Close dialog
              child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                 ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("MECHU FIREBASE CONNECT AKITILA srry : )"),
      backgroundColor: Color.fromARGB(255, 225, 198, 41),
      ),
        
    );// Add your logout logic here (e.g., navigate to login screen)
              },
              child: const Text("Logout", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'SystemSettings.dart'; // Import System Settings Page

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        title: const Text("Admin Profile"),
        backgroundColor: Colors.grey[900], // Darker navbar
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/dass.png"), // Ensure image is in assets
            ),
            const SizedBox(height: 10),

            // Admin Name
            const Text(
              "Aravind Das",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),

            // Admin Email
            Text(
              "aravindsheshh@bestie.com",
              style: TextStyle(color: Colors.grey[400], fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Admin ID
            Text(
              "ADMIN ID : 100239",
              style: TextStyle(color: Colors.grey[400], fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Admin Role
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[850], // Dark grey background
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.admin_panel_settings, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Role: Admin",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space before options

            // Action Buttons
            Expanded(
              child: ListView(
                children: [
                  _buildOption(Icons.settings, "Settings", context: context), // Navigate to System Settings
                  const Divider(color: Colors.grey), // Divider
                  _buildOption(Icons.lock, "Change Password"),
                  _buildOption(Icons.logout, "Logout", isLogout: true, context: context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for List Items
  Widget _buildOption(IconData icon, String title, {bool isLogout = false, BuildContext? context}) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.white),
      title: Text(
        title,
        style: TextStyle(color: isLogout ? Colors.red : Colors.white, fontSize: 18),
      ),
      onTap: () {
        if (title == "Settings" && context != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Settings()), // Navigate to System Settings Page
          );
        } else if (isLogout && context != null) {
          _showLogoutDialog(context); // Show confirmation dialog
        }
      },
    );
  }

  // Logout Confirmation Dialog
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Logout"),
          content: const Text("Are you sure you want to log out from this masterpiece app?"),
          backgroundColor: Colors.grey[900], // Dark mode dialog
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          contentTextStyle: const TextStyle(color: Colors.white, fontSize: 16),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Close dialog
              child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("MECHU FIREBASE CONNECT AKITILA srry : )"),
                    backgroundColor: Color.fromARGB(255, 225, 198, 41),
                  ),
                ); // Show logout message
              },
              child: const Text("Logout", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
