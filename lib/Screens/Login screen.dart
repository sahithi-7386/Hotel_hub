import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false; // To show loading indicator

  void _login() {
    // Simulate a loading state
    setState(() {
      _isLoading = true;
    });

    // Simulate an asynchronous login process (replace with your actual authentication logic)
    Future.delayed(Duration(seconds: 2), () {
      // Retrieve username and password from controllers
      String username = _usernameController.text;
      String password = _passwordController.text;

      // Replace with your authentication logic
      if (username == 'sahithi' && password == 'sahi7386') {
        // Navigate to home screen upon successful login
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        // Show error message for invalid login
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      }

      // Reset loading state
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image container
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://thumbs.dreamstime.com/b/luxury-hotel-4480742.jpg'), 
                
                
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Username TextField
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                // Password TextField
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                // Login Button
                _isLoading
                    ? CircularProgressIndicator() // Show loading indicator while logging in
                    : ElevatedButton(
                        onPressed: _login,
                        child: Text('Login'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
