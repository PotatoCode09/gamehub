import 'package:flutter/material.dart';
import 'pages/actual_home_page.dart'; // We'll create this
import 'pages/search_page.dart';     // We'll create this
import 'pages/profile_page.dart';    // We'll create this

class MainAppScreen extends StatefulWidget {
  // final VoidCallback? onSignOut; // Optional: if you want a sign out button here
  // const MainAppScreen({super.key, this.onSignOut});

  const MainAppScreen({super.key});


  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _selectedIndex = 0;

  // Define the pages that the BottomNavigationBar will switch between
  static const List<Widget> _widgetOptions = <Widget>[
    ActualHomePage(), // Your original "Home" content
    SearchPage(),     // A new page for "Search"
    ProfilePage(),    // A new page for "Profile"
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Optional: Define titles for each tab's AppBar
  static const List<String> _appBarTitles = <String>[
    'Gamehub Home',
    'Search Games',
    'My Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
        // Example: Add a sign-out button
        // actions: [
        //   if (widget.onSignOut != null)
        //     IconButton(
        //       icon: Icon(Icons.logout),
        //       onPressed: widget.onSignOut,
        //     )
        // ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home), // Optional: different icon when active
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
        selectedItemColor: Theme.of(context).colorScheme.primary, // Use theme color
        unselectedItemColor: Colors.grey, // Optional: for unselected items
        onTap: _onItemTapped,
        // type: BottomNavigationBarType.fixed, // Optional: if you have more than 3 items and want labels to always show
        // showSelectedLabels: true, // Optional
        // showUnselectedLabels: false, // Optional
      ),
    );
  }
}