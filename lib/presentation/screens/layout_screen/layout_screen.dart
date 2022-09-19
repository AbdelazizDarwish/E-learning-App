import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:workshop/presentation/screens/home_screen/home_screen.dart';
import 'package:workshop/presentation/screens/news_screen/news_screen.dart';
import 'package:workshop/presentation/screens/settings_screen/settings_screen.dart';

class LayOutScreen extends StatefulWidget {
  const LayOutScreen({Key? key}) : super(key: key);

  @override
  State<LayOutScreen> createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  List _screens = [HomeScreen(), NewsScreen(), SettingsScreen()];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              textAlign: TextAlign.center,
              inactiveColor: Colors.black,
              title: Text('Home'),
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.newspaper),
                textAlign: TextAlign.center,
                inactiveColor: Colors.black,
                title: Text('News'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                textAlign: TextAlign.center,
                inactiveColor: Colors.black,
                title: Text('Settings'),
                activeColor: Colors.blue),
          ],
        ));
  }
}
