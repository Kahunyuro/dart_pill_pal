// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'san serif',
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Version CA.108.0",
                    style: TextStyle(
                      fontFamily: 'san serif',
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star),
                  Text(" Rate the app",
                      style: TextStyle(
                        fontFamily: 'san serif',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.thumb_up),
                  InkWell(
                    onTap: () async {
                      final url =
                          'https://www.instagram.com/@mk.kimirii/'; 
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Text("  Follow us on our Social Media Pages",
                        style: TextStyle(
                          fontFamily: 'san serif',
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                  ),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(CupertinoIcons.briefcase),
                  Text("  Improve us",
                      style: TextStyle(
                        fontFamily: 'san serif',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.house_outlined),
                  Text("  Legal",
                      style: TextStyle(
                        fontFamily: 'san serif',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(CupertinoIcons.doc),
                  Text("  Acknowledgements",
                      style: TextStyle(
                        fontFamily: 'san serif',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(CupertinoIcons.doc),
                  Text("  Privacy",
                      style: TextStyle(
                        fontFamily: 'san serif',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ],
              ),
              Divider(
                height: 20,
              ),
              Divider(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
