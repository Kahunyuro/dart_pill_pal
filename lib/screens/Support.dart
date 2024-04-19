import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
                    'Support',
                    style: TextStyle(
                      fontFamily: 'san serif',
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
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
                  Icon(Icons.email),
                  Text("  Contact Us",
                    style: TextStyle(
                      fontFamily: 'san serif',
                      color: Theme.of(context).colorScheme.secondary,)),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.phone),
                  Text("  Call Us",
                    style: TextStyle(
                      fontFamily: 'san serif',
                      color: Theme.of(context).colorScheme.secondary,)),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.chat),
                  Text("  Chat with Us",
                    style: TextStyle(
                      fontFamily: 'san serif',
                      color: Theme.of(context).colorScheme.secondary,)),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.help),
                  Text("  Help Center",
                    style: TextStyle(
                      fontFamily: 'san serif',
                      color: Theme.of(context).colorScheme.secondary,)),
                ],
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.feedback),
                  Text("  Feedback",
                    style: TextStyle(
                      fontFamily: 'san serif',
                      color: Theme.of(context).colorScheme.secondary,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}