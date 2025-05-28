import 'package:flutter/material.dart';
import 'saved1.dart';
import 'saved2.dart';
import 'saved3.dart';
import 'saved4.dart';

class SavedGame {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final double rating;

  SavedGame({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.rating,
  });
}

class SavedGamesPage extends StatelessWidget {
  const SavedGamesPage({super.key});

  // Updated saved games data to match your actual games
  List<SavedGame> get savedGames => [
    SavedGame(
      id: 'saved1',
      title: 'Gears of War',
      imageUrl: 'assets/images/saved1.jpg',
      description: 'Third-person shooter with cover-based combat',
      rating: 4.8,
    ),
    SavedGame(
      id: 'saved2',
      title: 'Starcraft',
      imageUrl: 'assets/images/saved2.jpg',
      description: 'Real-time strategy with three unique races',
      rating: 4.9,
    ),
    SavedGame(
      id: 'saved3',
      title: 'Doom',
      imageUrl: 'assets/images/saved3.jpg',
      description: 'Legendary first-person shooter',
      rating: 4.7,
    ),
    SavedGame(
      id: 'saved4',
      title: 'Killzone 2',
      imageUrl: 'assets/images/saved4.jpg',
      description: 'Visually stunning first-person shooter',
      rating: 4.6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Games'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body:
          savedGames.isEmpty
              ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bookmark_border, size: 100, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'No saved games yet',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Games you save will appear here',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              )
              : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: savedGames.length,
                itemBuilder: (context, index) {
                  final game = savedGames[index];
                  return _buildGameCard(context, game);
                },
              ),
    );
  }

  Widget _buildGameCard(BuildContext context, SavedGame game) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _navigateToGameDetail(context, game),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  game.imageUrl,
                  width: 80,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 80,
                      height: 100,
                      color: Colors.grey[300],
                      child: const Icon(
                        Icons.games,
                        size: 40,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      game.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      game.description,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.amber[600]),
                        const SizedBox(width: 4),
                        Text(
                          game.rating.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.bookmark_remove, color: Colors.red),
                onPressed: () => _removeSavedGame(context, game),
                tooltip: 'Remove from saved',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToGameDetail(BuildContext context, SavedGame game) {
    // Navigate to the correct game detail page based on game ID
    Widget destinationPage;

    switch (game.id) {
      case 'saved1':
        destinationPage = const Saved1Page();
        break;
      case 'saved2':
        destinationPage = const Saved2Page();
        break;
      case 'saved3':
        destinationPage = const Saved3Page();
        break;
      case 'saved4':
        destinationPage = const Saved4Page();
        break;
      default:
        // Fallback to a generic game detail page
        destinationPage = Scaffold(
          appBar: AppBar(title: Text(game.title)),
          body: Center(child: Text('Game detail page for ${game.title}')),
        );
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destinationPage),
    );
  }

  void _removeSavedGame(BuildContext context, SavedGame game) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Remove Game'),
          content: Text('Remove "${game.title}" from saved games?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Here you would implement the actual removal logic
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${game.title} removed from saved games'),
                  ),
                );
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Remove'),
            ),
          ],
        );
      },
    );
  }
}

// Placeholder for game detail page - replace with your actual implementation
class GameDetailPage extends StatelessWidget {
  final String gameId;

  const GameDetailPage({super.key, required this.gameId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Details')),
      body: Center(child: Text('Game Detail Page for ID: $gameId')),
    );
  }
}
