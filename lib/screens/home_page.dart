import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:pill_pa1/components/bottom_app_bar.dart';
import 'package:pill_pa1/components/drawer.dart';
import 'package:pill_pa1/components/slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key, 
  });

  @override
  State<Homepage> createState() => HomepageState();
}

void logout() {}

Future<void> handleRefresh() async {
  await Future.delayed(const Duration(seconds: 2));
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome to Pill Pall',
                  style: GoogleFonts.poppins(fontSize: 22)),
              titleSpacing: 00.0,
              centerTitle: true,
              toolbarHeight: 60.2,
              toolbarOpacity: 0.8,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                    icon: const Icon(Icons.shopping_cart))
              ],
              backgroundColor: const Color.fromARGB(255, 0, 204, 255),
            ),
            drawer: My_Drawer(),
            bottomNavigationBar: const BottomBar(),
            body: LiquidPullToRefresh(
                backgroundColor: const Color.fromARGB(255, 123, 127, 134),
                color: const Color.fromARGB(255, 0, 194, 253),
                onRefresh: handleRefresh,
                child: ListView(children: [
                  Text("Panadol", style: GoogleFonts.poppins(fontSize: 20)),
               
                  const SizedBox(
                    height: 20,
                  ),
                  const Card(
                    color: Colors.blueAccent,
                  )
                ]))));
  }
}
