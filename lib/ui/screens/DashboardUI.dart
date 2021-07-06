import 'package:export_nepal/ui/screens/dashboard/home/HomeUI.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'dashboard/account/MyAccount.dart';
import 'dashboard/category/CategoryUI.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeUI(),
    CategoryUI(),
    Text(
      'Messages',
      style: optionStyle,
    ),
    Text(
      'Cart',
      style: optionStyle,
    ),
    MyAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Feather.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(SimpleLineIcons.grid),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.message_circle),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(SimpleLineIcons.handbag),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.user_o),
            label: 'My Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}

