import 'package:flutter/material.dart';
import 'package:uzme/Request.dart';
//import 'package:uzme/bottom_nav_bar/RequestForm.dart';
//import 'package:uzme/home_page/home_page.dart';
import 'package:uzme/home_page/home_page_one.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0 ;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    RequestForGarbage(),
    const Text(
      'Index 2: Map',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavigationBar(

          backgroundColor: const Color(0xff008080),
          elevation: 20,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.request_page),
              label: 'Request',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
