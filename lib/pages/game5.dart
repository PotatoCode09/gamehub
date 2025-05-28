import 'package:flutter/material.dart';

class Game5Page extends StatelessWidget {
  const Game5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Far Cry'),
        backgroundColor: Colors.orange[900],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/game5.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Far Cry',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Released: March 23, 2004',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Far Cry is a first-person shooter that set new standards for open-world FPS games. Players take on the role of Jack Carver, who must survive on a mysterious archipelago while facing mercenaries and uncovering dark secrets.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 16),
                  _buildFeaturesList(),
                  const SizedBox(height: 16),
                  _buildWeapons(),
                  const SizedBox(height: 16),
                  _buildGameStats(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Key Features',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildFeatureItem('Open World Environment'),
        _buildFeatureItem('Advanced AI Systems'),
        _buildFeatureItem('Vehicle Combat'),
        _buildFeatureItem('Realistic Graphics'),
        _buildFeatureItem('Multiple Approach Options'),
        _buildFeatureItem('Dynamic Weather System'),
        _buildFeatureItem('Physics-Based Gameplay'),
      ],
    );
  }

  Widget _buildWeapons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Arsenal',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildWeaponCard(
          'Assault Rifles',
          'High-powered automatic weapons for intense firefights',
        ),
        _buildWeaponCard(
          'Sniper Rifles',
          'Long-range precision weapons for stealth elimination',
        ),
        _buildWeaponCard(
          'Explosives',
          'Grenades and rocket launchers for devastating attacks',
        ),
        _buildWeaponCard(
          'Vehicles',
          'Boats, jeeps, and helicopters for tactical advantage',
        ),
      ],
    );
  }

  Widget _buildGameStats() {
    return Card(
      color: Colors.orange[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Game Statistics',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange[900],
              ),
            ),
            const SizedBox(height: 12),
            _buildStatRow('Developer', 'Crytek'),
            _buildStatRow('Publisher', 'Ubisoft'),
            _buildStatRow('Platform', 'PC'),
            _buildStatRow('Genre', 'FPS'),
            _buildStatRow('Rating', 'M (Mature 17+)'),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.circle, size: 8, color: Colors.orange[900]),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  Widget _buildWeaponCard(String weapon, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weapon,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.orange[900],
              ),
            ),
            const SizedBox(height: 4),
            Text(description, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
