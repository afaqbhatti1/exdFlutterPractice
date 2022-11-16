import 'package:exdflutter_practice/home.dart';
import 'package:exdflutter_practice/profile.dart';
import 'package:exdflutter_practice/setting.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List pages = [
    Home(),
    Profile(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNav Screen"),
        centerTitle: true,
      ),
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIconTheme: IconThemeData(color: Colors.red),
          selectedLabelStyle:
              TextStyle(fontSize: 20, decorationColor: Colors.green),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ]),
    );
  }
}
