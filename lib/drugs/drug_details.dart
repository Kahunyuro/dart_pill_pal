
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pill_pa1/components/button.dart';
import 'package:pill_pa1/drugs/drugs.dart';
import 'package:pill_pa1/drugs/shop.dart';


import 'package:provider/provider.dart';

class DrugDetails extends StatefulWidget {
  final drugs Drugs;
  const DrugDetails({
    super.key,
      required this.Drugs,
  });

  @override
  State<DrugDetails> createState() => _DrugDetailsState();
}

class _DrugDetailsState extends State<DrugDetails> {
  int quatityCount = 0;
  void decreaseQuatity() {
    setState(() {
      if (quatityCount > 0) {}
      quatityCount--;
    });
  }

  void increaseQuatity() {
    setState(() {
      quatityCount++;
    });
  }

  void increaseTotal() {
    setState(() {
      quatityCount++;
    });
  }

  void addToCart() {
    if (quatityCount > 0) {
      final shop = context.read<Shop>();
      shop.addToCart(widget.Drugs, quatityCount);
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
                content: const Text("Added"),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.done_outlined))
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color.fromARGB(221, 32, 27, 27),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Image.asset(
                      widget.Drugs.Image,
                      height: 200,
                      width: 200,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      widget.Drugs.rating,
                      style: const TextStyle(fontSize: 5, color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.Drugs.Name,
                    ),
                    Text(
                      widget.Drugs.rating,
                      style: const TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${widget.Drugs.Price}/=",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.remove_outlined),
                        onPressed: decreaseQuatity),
                    SizedBox(
                      width: 40,
                      child: Center(
                        child: Text(
                          quatityCount.toString(),
                          style: const TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    IconButton(
                        icon: const Icon(Icons.add_outlined),
                        onPressed: increaseQuatity),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(text: "Add to Cart", onTap: addToCart)
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
