import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for SystemChrome
import 'package:myapp/Screens/Home_Screens.dart';
import 'package:myapp/Screens/Login screen.dart';
import 'package:myapp/Screens/Login screen.dart'; // Import your LoginScreen.dart file

void main() {
  // Hide debug banner
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Haven', // App title
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Hide debug banner
      initialRoute: '/login', // Initial route set to LoginScreen
      routes: {
        '/login': (context) => LoginScreen(), // Define LoginScreen route
        '/home': (context) => HomeScreen(), // Define HomeScreen route
      },
    );
  }
}
