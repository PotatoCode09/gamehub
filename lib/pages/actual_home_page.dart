import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart'; // Add this import

class ActualHomePage extends StatelessWidget {
  const ActualHomePage({super.key});

  final List<String> trendingGames = const [
    'game1.jpg',
    'game2.jpg',
    'game3.jpg',
    'game4.jpg',
    'game5.jpg',
  ];

  final List<String> gameTitles = const [
    'Terraria',
    'Diablo II',
    'Baldurs Gate II',
    'World of Warcraft',
    'Farcry',
  ];

  final List<String> savedGames = const [
    'saved1.jpg',
    'saved2.jpg',
    'saved3.jpg',
    'saved4.jpg',
  ];

  final List<String> savedGameTitles = const [
    'Gears of War',
    'Starcraft',
    'Doom',
    'Killzone 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 36, // Reduced height
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Marquee(
                      text:
                      "Did you know that the first video game Easter egg appeared in Adventure for the Atari 2600 in 1980, hidden by a developer who wasn't credited? Or that Mario was originally called 'Jumpman' in Donkey Kong, and his iconic mustache was added due to pixel limitations? Halo 2 had a hidden message from a developer proposing to his girlfriend, and The Legend of Zelda: Ocarina of Time uses reversed dog barks as some enemy sound effects. Minecraft was almost called Cave Game, and its world is so vast that it's practically infinite — if you walked to the edge, the game would start glitching. In Pokémon Red and Blue, there's a myth that beating the game 100 times unlocks Pikablu, a non-existent Pokémon fans speculated about for years. Pac-Man was inspired by a pizza with a slice missing, and the original Tetris was coded by a Russian scientist during the Cold War, using text characters because he didn't have graphics capabilities. Meanwhile, in Metal Gear Solid 3, saving the game during a boss fight and returning a week later causes the elderly boss to die of old age! Even crazier, there's a playable version of Galaga inside Tekken 3. Video game history is packed with quirky surprises, hidden tributes, and creative hacks that make the gaming world endlessly fascinating.",
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                      blankSpace: 60.0,
                      velocity: 40.0,
                      pauseAfterRound: const Duration(seconds: 1),
                      startPadding: 10.0,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Saved Games',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 260, // Same height as trending games
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: savedGames.length,
                      separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 140, // Same width as trending games
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/images/${savedGames[index]}',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                savedGameTitles[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8), // Reduced space
                  const Text(
                    'Welcome to your GameHub!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Discover trending games and manage your collection.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Trending Games',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 260, // Increased height to accommodate titles
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingGames.length,
                      separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 140, // Fixed width for consistency
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/images/${trendingGames[index]}',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                gameTitles[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  // Add more widgets for additional content
                ],
              ),
            ),
          ),
        ));
  }
}