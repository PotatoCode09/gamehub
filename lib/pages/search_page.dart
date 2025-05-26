import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchTerm = "";

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    // In a real app, you would use _searchController.text to query data
    setState(() {
      _searchTerm = _searchController.text;
    });
    FocusScope.of(context).unfocus(); // Dismiss keyboard
    // Example: Trigger an API call or filter a local list
    if (_searchTerm.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Searching for: $_searchTerm...')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar( // Usually in MainAppScreen
      //   title: const Text('Search'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search for games, users, etc.',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onSubmitted: (value) => _performSearch(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton.filledTonal(
                  icon: const Icon(Icons.search),
                  onPressed: _performSearch,
                  tooltip: 'Search',
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (_searchTerm.isNotEmpty)
              Expanded(
                child: Center(
                  // Replace this with your actual search results display
                  child: Text(
                    'Displaying search results for: "$_searchTerm"',
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            else
              const Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.manage_search_rounded, size: 60, color: Colors.grey),
                      SizedBox(height: 10),
                      Text(
                        'Enter a term to start searching.',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}