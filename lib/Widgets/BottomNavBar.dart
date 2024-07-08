
import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;


  const CustomBottomNavbar({
    required this.currentIndex,
    required this.onTap

});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 64, 245, 251),
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.white60,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,

      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_max_sharp,
            color: currentIndex == 0 ? Colors.blueAccent : Colors.red,

          ),label: 'Home'
        ),

        BottomNavigationBarItem(icon: Icon(Icons.category,
        color: currentIndex == 1 ? Colors.black : Colors.red,
        ),
        label: 'category'
        ),

       

        BottomNavigationBarItem(icon: Icon(Icons.person,
          color: currentIndex == 2 ? Colors.black : Colors.red,
        ),
            label: 'profile'
        ),
      ],
    );
  }
}