import 'package:flutter/material.dart';
import 'Competences.dart';
import 'Profil.dart';
import 'Formation.dart';
import 'Infos.dart';
import 'Experience.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;

  final List<Widget> _screenList = [
    ProfilScreen(),
    CompetencesScreen(),
    ExperienceScreen(),
    FormationScreen(),
    InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        iconSize: 35,
        currentIndex: _currentScreen,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: "Profil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Competences",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined),
            label: "Experiences",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.corporate_fare),
            label: "Formation",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze_outlined),
            label: "Infos",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
