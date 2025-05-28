import 'package:flutter/material.dart';

class Saved4Page extends StatelessWidget {
  const Saved4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Killzone 2'),
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/saved4.jpg',
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
                    'Killzone 2',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Released: February 25, 2009',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'A visually stunning first-person shooter that follows the ISA\'s invasion of Helghan. Players experience intense combat with revolutionary graphics and weighted controls.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 16),
                  _buildFeaturesList(),
                  const SizedBox(height: 16),
                  _buildMultiplayerClasses(),
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
        _buildFeatureItem('Cinematic Campaign'),
        _buildFeatureItem('32-Player Multiplayer'),
        _buildFeatureItem('Class-Based Combat'),
        _buildFeatureItem('Dynamic Battlefield'),
        _buildFeatureItem('Advanced AI System'),
        _buildFeatureItem('Realistic Physics'),
        _buildFeatureItem('Atmospheric Sound Design'),
      ],
    );
  }

  Widget _buildMultiplayerClasses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Multiplayer Classes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildClassCard(
          'Rifleman',
          'Standard infantry with balanced combat capabilities',
        ),
        _buildClassCard(
          'Engineer',
          'Technical specialist with repair and explosive abilities',
        ),
        _buildClassCard(
          'Medic',
          'Support class focused on healing and reviving teammates',
        ),
        _buildClassCard(
          'Assault',
          'Heavy weapons specialist with rocket launchers',
        ),
      ],
    );
  }

  Widget _buildGameStats() {
    return Card(
      color: Colors.grey[100],
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
                color: Colors.grey[850],
              ),
            ),
            const SizedBox(height: 12),
            _buildStatRow('Developer', 'Guerrilla Games'),
            _buildStatRow('Publisher', 'Sony Computer Entertainment'),
            _buildStatRow('Platform', 'PlayStation 3'),
            _buildStatRow('Genre', 'First-person Shooter'),
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
          Icon(Icons.circle, size: 8, color: Colors.grey[850]),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  Widget _buildClassCard(String className, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              className,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[850],
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
