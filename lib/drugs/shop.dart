
import 'package:flutter/material.dart';

import 'drugs.dart';



class Shop with ChangeNotifier {
  List<drugs> _DrugMenu = [
   
  ];
  List<drugs> get DrugMenu => _DrugMenu;
  List get cart => cart;

 
  void addToCart(
    drugs Drugs,
    int quatityCount,
  ) {
    for (int i = 0; i < quatityCount; i++) {
      if (Drugs.quantity > 0) {
        cart.add(Drugs);
      }
    }
    notifyListeners();
  }

  void removefromCart(
    drugs Drugs,
  ) {
    {
      cart.remove(Drugs);
    }
    notifyListeners();
  }
}
