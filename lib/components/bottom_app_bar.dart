import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pill_pa1/screens/account.dart';
import 'package:pill_pa1/screens/home_page.dart';
import 'package:pill_pa1/screens/jk.dart';
import 'package:pill_pa1/screens/medicine.dart';
import 'package:pill_pa1/screens/searchbar.dart';

class BottomBar extends StatefulWidget {
  final void Function()? onPressed;
  const BottomBar({super.key, this.onPressed});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(255, 0, 204, 255),
      shape: const CircularNotchedRectangle(),
      notchMargin: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Homepage(),
                    ));
              },
              icon: const Icon(Icons.home_outlined)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Searchbar(),
                    ));
              },
              icon: const Icon(Icons.search_rounded)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const medicine(),
                    ));
              },
              icon: const Icon(Icons.medical_services_rounded)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => AccountPage(),
                    ));
              },
              icon: const Icon(Icons.person)),
        ],
      ),
    );
  }
}
