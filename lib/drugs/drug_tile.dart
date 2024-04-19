import 'package:flutter/material.dart';

class DrugsTile extends StatelessWidget {
  final drugs;
  final void Function()? onTap;
  const DrugsTile({
    super.key,
    required this.drugs,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(bottom: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Image.asset(
              drugs.Image,
              height: 140,
            ),
                SizedBox(
                  width: 150,
                  child: Row(
                    children: [
                      Text("SH" + drugs.Price),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.blue,
                      ),
                      Text(drugs.rating)
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
