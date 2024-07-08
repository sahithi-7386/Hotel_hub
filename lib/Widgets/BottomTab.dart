import 'package:flutter/material.dart';

class LoginBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text('Login',
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w500,
              color: Colors.amberAccent
            ),),

            SizedBox(height: 30,),

            Text('Phone Number : '),
            TextField(decoration: InputDecoration(
              label: Text('Enter your Number')
            ),),
            SizedBox(height: 10,),

            Text('Password : '),
            TextField(decoration: InputDecoration(
                label: Text('Enter your password')
            ),),
            SizedBox(height: 10,),

            ElevatedButton(

                onPressed: (){}, child: Text('Login')),

          ],
        ),
      ),
    );
  }
}