import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/validators/resources.dart';
import '../home/home_screen.dart';
import 'account_screen.dart';
import 'advertise_screen.dart';
import 'favourites_screen.dart';
import 'find_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Find(),
    Favourites(),
    Advertise(),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.customBackground,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: R.colors.customBackground,
        selectedItemColor: R.colors.customBlue,
        unselectedItemColor: R.colors.customDarkGrey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItemMethod(CupertinoIcons.home, "Início"),
          BottomNavigationBarItemMethod(
              Icons.find_in_page_outlined, "Descobrir"),
          BottomNavigationBarItemMethod(CupertinoIcons.heart, "Favoritos"),
          BottomNavigationBarItemMethod(Icons.message_outlined, "Anúncie"),
          BottomNavigationBarItemMethod(CupertinoIcons.person, "Perfil"),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  BottomNavigationBarItem BottomNavigationBarItemMethod(
    IconData icon,
    String dataLabel,
  ) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: dataLabel,
    );
  }
}
