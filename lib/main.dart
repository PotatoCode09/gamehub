import 'package:flutter/material.dart';
import 'authentication_screen.dart';
import 'main_app_screen.dart'; // We'll create this next

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAuthenticated = false;

  void _handleSignIn() {
    setState(() {
      _isAuthenticated = true;
    });
  }

  // Optional: Add a method to handle sign out if needed
  // void _handleSignOut() {
  //   setState(() {
  //     _isAuthenticated = false;
  //   });
  //   // Add any actual sign-out logic here (e.g., clearing tokens)
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamehub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // Recommended for new apps
      ),
      home: _isAuthenticated
          ? MainAppScreen() // Pass signOut callback if you implement it: onSignOut: _handleSignOut
          : AuthenticationScreen(onSignedIn: _handleSignIn),
    );
  }
}