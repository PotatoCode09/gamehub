import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
// Add these imports for game pages
import 'game1.dart';
import 'game2.dart';
import 'game3.dart';
import 'game4.dart';
import 'game5.dart';
import 'saved1.dart';
import 'saved2.dart';
import 'saved3.dart';
import 'saved4.dart';

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
            padding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 36, // Reduced height
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey.shade800
                            : Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Marquee(
                    text:
                        "Did you know that the first video game Easter egg appeared in Adventure for the Atari 2600 in 1980, hidden by a developer who wasn't credited? Or that Mario was originally called 'Jumpman' in Donkey Kong, and his iconic mustache was added due to pixel limitations? Halo 2 had a hidden message from a developer proposing to his girlfriend, and The Legend of Zelda: Ocarina of Time uses reversed dog barks as some enemy sound effects. Minecraft was almost called Cave Game, and its world is so vast that it's practically infinite — if you walked to the edge, the game would start glitching. In Pokémon Red and Blue, there's a myth that beating the game 100 times unlocks Pikablu, a non-existent Pokémon fans speculated about for years. Pac-Man was inspired by a pizza with a slice missing, and the original Tetris was coded by a Russian scientist during the Cold War, using text characters because he didn't have graphics capabilities. Meanwhile, in Metal Gear Solid 3, saving the game during a boss fight and returning a week later causes the elderly boss to die of old age! Even crazier, there's a playable version of Galaga inside Tekken 3. Video game history is packed with quirky surprises, hidden tributes, and creative hacks that make the gaming world endlessly fascinating.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
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
                    separatorBuilder:
                        (context, index) => const SizedBox(width: 16),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                switch (index) {
                                  case 0:
                                    return const Saved1Page();
                                  case 1:
                                    return const Saved2Page();
                                  case 2:
                                    return const Saved3Page();
                                  case 3:
                                    return const Saved4Page();
                                  default:
                                    return const Saved1Page();
                                }
                              },
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 140,
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
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyLarge?.color,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
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
                Text(
                  'Discover trending games and manage your collection.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.color?.withOpacity(0.7),
                  ),
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
                    separatorBuilder:
                        (context, index) => const SizedBox(width: 16),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                switch (index) {
                                  case 0:
                                    return const Game1Page();
                                  case 1:
                                    return const Game2Page();
                                  case 2:
                                    return const Game3Page();
                                  case 3:
                                    return const Game4Page();
                                  case 4:
                                    return const Game5Page();
                                  default:
                                    return const Game1Page();
                                }
                              },
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 140,
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
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyLarge?.color,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
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
      ),
    );
  }
}
