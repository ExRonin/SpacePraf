import 'package:flutter/material.dart';
import 'package:Spacepraf/screens/discover_screen.dart';
import 'package:Spacepraf/screens/home_screen.dart';
import 'package:Spacepraf/screens/main_menu.dart';

//The following has the UI for the Bottom Navigation bar
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Color.fromARGB(255, 255, 255, 255),
      unselectedItemColor: Color.fromARGB(255, 255, 255, 255).withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(left: 50),
            child: IconButton(
              //Navigating the the Home Screen
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: const Icon(Icons.home),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              //Navigating the the Contact Screen
              Navigator.pushNamed(context, DiscoverScreen.routeName);
            },
            icon: const Icon(Icons.person),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {
                //Navigating the the Game Screen(MainMenu)
                Navigator.pushNamed(context, MainMenu.routeName);
              },
              icon: const Icon(Icons.attractions_outlined),
            ),
          ),
          label: 'Game',
        ),
      ],
    );
  }
}
