import 'package:flutter/material.dart';

class ActualHomePage extends StatelessWidget {
  const ActualHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar( // Usually the AppBar is in MainAppScreen for consistent look
      //   title: const Text('Home'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.home,
              size: 80,
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 20),
            const Text(
              'Actual Home Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'This is where your main dashboard or primary content will live. '
                'Build out this page with the core features of your app section.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ),
            // Add more widgets here for your home page content
          ],
        ),
      ),
    );
  }
}