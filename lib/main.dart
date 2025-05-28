import 'package:flutter/material.dart';
import 'authentication_screen.dart';
import 'main_app_screen.dart';

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

  void _handleSignOut() {
    setState(() {
      _isAuthenticated = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamehub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          _isAuthenticated
              ? MainAppScreen(onSignOut: _handleSignOut)
              : AuthenticationScreen(onSignedIn: _handleSignIn),
    );
  }
}
