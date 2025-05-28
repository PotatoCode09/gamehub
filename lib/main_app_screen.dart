import 'package:flutter/material.dart';
import 'pages/actual_home_page.dart';
import 'pages/search_page.dart';
import 'pages/profile_page.dart';

class MainAppScreen extends StatefulWidget {
  final VoidCallback onSignOut;
  const MainAppScreen({super.key, required this.onSignOut});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _selectedIndex = 0;

  List<Widget> get _widgetOptions => [
    const ActualHomePage(),
    const SearchPage(),
    ProfilePage(onSignOut: widget.onSignOut),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<String> _appBarTitles = <String>[
    'Gamehub Home',
    'Search Games',
    'My Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitles[_selectedIndex])),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
