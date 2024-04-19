import 'package:flutter/material.dart';
import 'package:pill_pa1/components/button.dart';
import 'package:pill_pa1/drugs/drugs.dart';
import 'package:pill_pa1/drugs/shop.dart';
import 'package:pill_pa1/screens/payment.dart';

import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

void removeFromCart(drugs Drugs, BuildContext context) {
  final shop = context.read<Shop>();
  shop.removefromCart(Drugs);
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) {
        double totalPrice = 0.0;
        for (final drugs Drugs in value.cart) {
          totalPrice += double.parse(Drugs.Price as String);
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'My Cart',
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final drugs Drugs = value.cart[index];
                    final String DrugName = Drugs.Name;
                    final String DrugPrice = Drugs.Price;

                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.all(5),
                      child: ListTile(
                        title: Text(
                          DrugName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(DrugPrice),
                        trailing: IconButton(
                          icon: Icon(Icons.delete_outlined),
                          onPressed: () => removeFromCart(Drugs, context),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: MyButton(text: "Pay Now",onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        PaymentPage(),
                  ));
            },),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Total Price: \ ${totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}