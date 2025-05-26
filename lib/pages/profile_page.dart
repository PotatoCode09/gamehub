import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // Example user data - in a real app, this would come from your state/backend
  final String userName = "Alex Gamer";
  final String userEmail = "alex.gamer@example.com";
  final String profileImageUrl = "https://api.dicebear.com/9.x/pixel-art/svg?seed=AlexGamer"; // Example avatar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar( // Usually in MainAppScreen
      //   title: const Text('Profile'),
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage(profileImageUrl),
              child: profileImageUrl.isEmpty
                  ? const Icon(Icons.person, size: 60, color: Colors.grey)
                  : null,
            ),
            const SizedBox(height: 20),
            Text(
              userName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              userEmail,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 30),
            const Divider(),
            _buildProfileOption(
              context,
              icon: Icons.settings,
              title: 'Account Settings',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Navigate to Account Settings')),
                );
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.history,
              title: 'Order History',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Navigate to Order History')),
                );
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Navigate to Notifications')),
                );
              },
            ),
            _buildProfileOption(
              context,
              icon: Icons.help_outline,
              title: 'Help & Support',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Navigate to Help & Support')),
                );
              },
            ),
            const Divider(),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.logout),
              label: const Text('Sign Out'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[400],
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              onPressed: () {
                // In a real app, you'd call a sign-out method from your auth service
                // and then navigate back to the AuthenticationScreen.
                // For now, just show a message.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Sign Out Tapped (implement actual sign out)')),
                );
                // Example: If you passed an onSignOut callback to MainAppScreen:
                // Provider.of<AuthService>(context, listen: false).signOut();
                // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => AuthenticationScreen()), (Route<dynamic> route) => false);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption(BuildContext context, {required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(title, style: const TextStyle(fontSize: 17)),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}