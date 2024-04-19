import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:pill_pa1/drugs/shop.dart';

import 'package:http/http.dart' as http;
import 'package:pill_pa1/screens/home_page.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

void getData() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:8000]'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var data = jsonDecode(response.body);
    // Do something with the data
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pill Pal',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
