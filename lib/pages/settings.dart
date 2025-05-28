import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final VoidCallback onThemeToggle;
  final bool isDarkMode;

  const SettingsPage({
    super.key,
    required this.onThemeToggle,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Appearance',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: Icon(
                  isDarkMode ? Icons.dark_mode : Icons.light_mode,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: const Text('Dark Mode (Beta)'),
                subtitle: Text(isDarkMode ? 'Enabled' : 'Disabled'),
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    onThemeToggle();
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Other Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: const Text('Language'),
                    subtitle: const Text('English'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Language settings coming soon'),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: const Text('About'),
                    subtitle: const Text('App version and info'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('About page coming soon')),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
