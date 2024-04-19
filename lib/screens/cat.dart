  
 /* 
  List<Item> items = [];
  int totalCost = 0;
  void addToCart(Item item) {
    setItems(item);
  }

  void removeFromCart(String name) {
    int index = getIndex(name);
    if (index != -1) {
      Item temp = items[index];
      items.removeAt(index);
      totalCost -= temp.cost;
    } else {
      print("The item is not in the cart");
    }
  }

  bool checkIfInCart(String name) => getIndex(name) != -1 ? true : false;
  void updateQuantity(String name, int quantity) {
    int index = getIndex(name);
    if (index != -1) {
      Item temp = items[index];
      items.removeAt(index);
      items.insert(index, Item(temp.name, quantity, temp.cost / temp.quantity));
      totalCost -= (temp.cost - (temp.cost / temp.quantity) * quantity);
    } else {
      print('The item is not in the cart');
    }
  }

  int getIndex(String name) {
    for (int i = 0; i < items.length; i++) {
      if (items[i].name == name) return i;
    }
    return -1;
  }

  void showCart() {
    print("\n\nYour Cart Contains: \n");
    for (int i = 0; i < items.length; i++) {
      String str = "Item ${i + 1}: ";
      str += "${items[i].name}, Quantity: ${items[i].quantity}\t";
      str += "\tCost: Rs.${items[i].cost}";
      print(str);
    }
    print("\nTotal Cost:\tRs.$totalCost");
  }
}
*/