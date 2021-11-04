import 'package:demo_app/app/modules/admin/views/admin_view.dart';
import 'package:demo_app/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  int selectedIndex = 0;

  final layoutPage = [
    HomeView(),
    AdminView(),
  ];

  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: layoutPage.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_outline),
            label: 'Admin',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemSelected,
      ),
    );
  }
}
