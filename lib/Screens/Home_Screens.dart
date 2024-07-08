
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screens/support.dart';
import 'package:myapp/Screens/hotel.dart';

import 'package:myapp/Screens/hi.dart';

import 'package:myapp/Widgets/appBar.dart';
import 'package:myapp/Widgets/BottomTab.dart';
import 'package:myapp/Widgets/BottomNavBar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static List<Widget> _wigetsOptions = <Widget>[
    SupportScreen(),
    Hotel(),
    
    hi(),
  ];

int _selectedIndex = 0;

void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}

void _showLoginBottomSheet(BuildContext context){
  showModalBottomSheet(context: context,
      builder: (context){
    return LoginBottomSheet();
      });
}
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(kToolbarHeight) ,
        child: MyappBar(
        title: 'Hotel_Hub',
        scaffoldKey: _scaffoldKey,
        onNotificationTap: (){},
       
      ),
      ),
  

      body: _wigetsOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex : _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}