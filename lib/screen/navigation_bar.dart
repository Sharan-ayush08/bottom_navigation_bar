import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigaton Bar"),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.schedule),
              title: Text("My Schedule"),
              activeColor: Colors.blue,
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.group),
              title: Text("My Group"),
              activeColor: Colors.blue,
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.import_contacts_outlined),
              title: Text("Knowledge"),
              activeColor: Colors.blue,
              inactiveColor: Colors.black),
          BottomNavyBarItem(
              icon: Icon(Icons.room_preferences),
              title: Text("Preference"),
              activeColor: Colors.blue,
              inactiveColor: Colors.black)
        ],
      ),
    );
  }
}
