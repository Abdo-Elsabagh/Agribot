import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationBar/Mater.dart';
import 'package:flutter_application_1/NavigationBar/QR.dart';
import 'package:flutter_application_1/NavigationBar/car.dart';
import 'package:flutter_application_1/home-view.dart';
import 'package:flutter_application_1/screens/login_in/login_view.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [HomeView(), Car(), Qr(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal[400],
        selectedItemColor: Colors.amber,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'car',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2_outlined),
            label: 'Qr',
          ),
        ],
      ),
    );
  }
}
