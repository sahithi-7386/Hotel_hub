import 'package:flutter/material.dart';

class hi  extends StatefulWidget {
  const hi ({super.key});

  @override
  State<hi> createState() => _hi();
}

class _hi extends State<hi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text('< Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Profile Picture
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/profile1.jpg'), // Add a profile picture image
              backgroundColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 16),
          // User Information
          Center(
            child: Column(
              children: [
                Text(
                  'HotelHub', // Replace with user's name
                  style: TextStyle(
                    fontSize: 24,color:Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Hotel_hub@gmail.com', // Replace with user's email
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          // Options List
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('location'),
                 // Replace with wallet balance
                onTap: () {
                  // Add functionality for wallet balance here
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Add functionality for settings here
                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('select language'),
                onTap: () {
                  // Add functionality for order history here
                },
              ),
              ListTile(
                leading: Icon(Icons.notification_add),
                title: Text('notification'),
                onTap: () {
                  // Add functionality for help and support here
                },
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('Questions and answers'),
                onTap: () {
                  // Add functionality for sharing the app here
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text('Logout'),
                onTap: () {
                  // Add logout functionality here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
