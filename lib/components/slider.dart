import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pill_pa1/drugs/drug_details.dart';
import 'package:pill_pa1/drugs/drug_tile.dart';
import 'package:pill_pa1/drugs/shop.dart';

import 'package:provider/provider.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  void navigatorToDrugDetails(int index) {
    final shop = context.read<Shop>();
    final DrugMenu = shop.DrugMenu;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DrugDetails(
            Drugs: DrugMenu[index],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final DrugMenu = shop.DrugMenu;
    return CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          autoPlay: false,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
        ),
        items: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: DrugMenu.length,
            itemBuilder: (context, index) => DrugsTile(
              drugs: DrugMenu[index],
              onTap: () => navigatorToDrugDetails(index),
            ),
          ),
        ]);
  }
}
