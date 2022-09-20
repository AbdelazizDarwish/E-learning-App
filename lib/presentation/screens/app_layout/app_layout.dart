import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:workshop/presentation/screens/home_screen/home_screen.dart';
import 'package:workshop/presentation/screens/news/news_screen.dart';
import 'package:workshop/presentation/screens/settings/settings_screen.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  List _screens = [HomeScreen(), NewsScreen(), SettingsScreen()];
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              textAlign: TextAlign.center,
              inactiveColor: Colors.black,
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('News'),
                textAlign: TextAlign.center,
                inactiveColor: Colors.black,
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                textAlign: TextAlign.center,
                inactiveColor: Colors.black,
                activeColor: Colors.pink),
          ],
        ));
  }
}
