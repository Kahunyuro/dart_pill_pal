// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pill_pa1/screens/about.dart';
import 'package:pill_pa1/screens/account.dart';
import 'package:pill_pa1/screens/help_centre.dart';
import 'package:pill_pa1/screens/home_page.dart';
import 'package:pill_pa1/screens/login.dart';
import 'package:pill_pa1/screens/payment.dart';
import 'package:url_launcher/url_launcher.dart';

class My_Drawer extends StatefulWidget {

  My_Drawer({
    super.key,
   
  });

  @override
  State<My_Drawer> createState() => _My_DrawerState();
}

class _My_DrawerState extends State<My_Drawer> {
  Future<void> logout() async {
    final response =
        await http.post(Uri.parse('https://pillpal.in/api/logout'), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $accessToken',
    });

    if (response.statusCode == 200) {
      accessTokens = null;

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login() ));
      
    } else if (
response.statusCode == 401


    );
     
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        AccountPage(), // Close the drawer
                  ));
            },
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
              ),
              child: null,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: const Text('Offer'),
                onTap: () {
                  // Implement action when item 3 is tapped
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const Homepage(), // Close the drawer
                      ));
                  // Close the drawer
                },
                leading: const Icon(Icons.card_giftcard_rounded),
              ),
              ListTile(
                title: const Text('Help Centre'),
                onTap: () {
                  // Implement action when item 3 is tapped
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const HelpCenter(), // Close the drawer
                      )); // Close the drawer
                },
                leading: const Icon(Icons.help_center_rounded),
              ),
              ListTile(
                title: const Text('Support'),
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const PaymentPage(), // Close the drawer
                      ));
                },
                leading: const Icon(Icons.handshake_rounded),
              ),
              ListTile(
                title: const Text('About Us'),
                onTap: () {
                  // Implement action when item 3 is tapped
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const About(), // Close the drawer
                      )); // Close the drawer
                },
                leading: const Icon(Icons.question_mark_rounded),
              ),
            ],
          ),
          ListTile(
            title: const Text('Call Us'),
            onTap: () async {
              const phoneNumber =
                  '0777994334'; // Replace with your phone number
              if (await canLaunch('tel:$phoneNumber')) {
                await launch('tel:$phoneNumber');
              } else {
                throw 'Could not launch $phoneNumber';
              }
            },
            leading: const Icon(Icons.phone),
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {},
            leading: const Icon(Icons.logout_rounded),
          )
        ],
      ),
    );
  }
}
