import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:pill_pa1/components/bottom_app_bar.dart';
import 'package:pill_pa1/drugs/drug_details.dart';


import 'package:provider/provider.dart';

class medicine extends StatefulWidget {
  const medicine({
    Key? key,
  });

  @override
  State<medicine> createState() => medicineState();
}

void logout() {
 
}

class medicineState extends State<medicine> {
  void navigatorToDrugDetails(int index) {


  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Library',
          ),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        bottomNavigationBar: BottomBar(),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                ),
                items: [

                ]),
          ],
        ),
      ),
    );
  }
}
