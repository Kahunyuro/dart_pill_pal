import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Searchbar extends StatefulWidget {
  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  TextEditingController searchController = TextEditingController();
  List<dynamic> searchResults = [];

  Future<void> search() async {
    String query = searchController.text;

    if (query.isNotEmpty) {
      final response = await http.get(
        Uri.parse('http://127.0.0.1:8000/api/search?query=$query'),
      );

      if (response.statusCode == 200) {
        setState(() {
          searchResults = jsonDecode(response.body);
        });
      }
    } else {
      setState(() {
        searchResults = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Search Bar'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: (value) => search(),
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search Drug...',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    icon: const Icon(Icons.search_rounded)
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchResults[index]['name']),
                  subtitle: Text(searchResults[index]['description']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
