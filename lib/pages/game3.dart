import 'package:flutter/material.dart';

class Game3Page extends StatelessWidget {
  const Game3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baldurs Gate II'),
        backgroundColor: Colors.purple[900],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/game3.jpg',
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
                    'Baldurs Gate II',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Released: September 24, 2000',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Baldur\'s Gate II: Shadows of Amn is a legendary RPG that continues the epic tale of the Bhaalspawn saga. Set in the Forgotten Realms, players embark on an epic journey filled with magic, intrigue, and memorable companions.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 16),
                  _buildFeaturesList(),
                  const SizedBox(height: 16),
                  _buildCompanions(),
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
        _buildFeatureItem('Rich Story-Driven Gameplay'),
        _buildFeatureItem('Complex Character Development'),
        _buildFeatureItem('Over 300 Hours of Content'),
        _buildFeatureItem('Multiple Romance Options'),
        _buildFeatureItem('Epic Magic System'),
        _buildFeatureItem('Deep Character Customization'),
        _buildFeatureItem('Throne of Bhaal Expansion'),
      ],
    );
  }

  Widget _buildCompanions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Notable Companions',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildCompanionCard(
          'Minsc',
          'Berserker ranger with his beloved hamster Boo',
        ),
        _buildCompanionCard(
          'Jaheira',
          'Half-elf fighter/druid with deep wisdom',
        ),
        _buildCompanionCard('Imoen', 'Your childhood friend and skilled thief'),
        _buildCompanionCard(
          'Viconia',
          'Dark elf cleric with a mysterious past',
        ),
        _buildCompanionCard('Keldorn', 'Noble paladin devoted to justice'),
      ],
    );
  }

  Widget _buildGameStats() {
    return Card(
      color: Colors.purple[50],
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
                color: Colors.purple[900],
              ),
            ),
            const SizedBox(height: 12),
            _buildStatRow('Developer', 'BioWare'),
            _buildStatRow('Publisher', 'Interplay Entertainment'),
            _buildStatRow('Platform', 'PC'),
            _buildStatRow('Genre', 'RPG'),
            _buildStatRow('Rating', 'T (Teen)'),
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
          Icon(Icons.circle, size: 8, color: Colors.purple[900]),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  Widget _buildCompanionCard(String name, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900],
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
