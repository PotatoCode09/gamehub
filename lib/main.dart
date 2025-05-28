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
  bool _isDarkMode = false;

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

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamehub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home:
          _isAuthenticated
              ? MainAppScreen(
                onSignOut: _handleSignOut,
                onThemeToggle: _toggleTheme,
                isDarkMode: _isDarkMode,
              )
              : AuthenticationScreen(onSignedIn: _handleSignIn),
    );
  }
}
