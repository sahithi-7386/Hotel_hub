
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<Favourite> {
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
              backgroundImage: AssetImage('images/profile.jpg'), // Add a profile picture image
              backgroundColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 16),
          // User Information
          Center(
            child: Column(
              children: [
                Text(
                  'Gayathri lakshmi', // Replace with user's name
                  style: TextStyle(
                    fontSize: 24,color:Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'gayathrigattem5012@gmail.com', // Replace with user's email
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
                leading: Icon(Icons.wallet),
                title: Text('Wallet Balance'),
                subtitle: Text('Rs.1500'), // Replace with wallet balance
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
                leading: Icon(Icons.history),
                title: Text('Order History'),
                onTap: () {
                  // Add functionality for order history here
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & Support'),
                onTap: () {
                  // Add functionality for help and support here
                },
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share App'),
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
