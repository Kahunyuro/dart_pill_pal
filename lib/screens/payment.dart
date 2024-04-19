import 'package:flutter/material.dart';
import 'package:pill_pa1/screens/home_page.dart';



class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment method",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView(
          children: [
          const  ListTile(),
             ListTile(leading: Image.asset('assets/images/1.jpeg'),
              title:const Text("Mpesa"  ),),
       const Divider(
          height: 15,
        ),
             ListTile(leading: Image.asset('assets/images/2.jpeg'),
              title:const Text("Airtel"),),
 const Divider(
          height: 15,
        ),
             ListTile(
              leading: Image.asset('assets/images/3.jpeg'),

              title:const Text("Equitel"),
             ),
const Divider(
          height: 15,
        ),
             ListTile(
              leading: Image.asset('assets/images/9.jpg'),
              
              title:const Text("Cash"),
              ),
             const  Divider(
          height: 15,
        ),
        ListTile(
          leading: Image.asset('assets/images/4.jpeg'),
          title:const Text("Visa"),
         onTap: () {
               
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            Homepage(), 
                      ));
                 
                },),
        const Divider(
          height: 15,
        ),
        ListTile(
          leading: Image.asset('assets/images/5.jpeg'),
          title:const Text("MasterCard"),
            ),
            
            

          ],
        ),
        
        
      
      );
  }
}