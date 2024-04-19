import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
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
                    'Help Center',
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
                  Icon(Icons.book),
                  Text("  Browse Articles",
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
                  Icon(Icons.question_answer),
                  Text("  Frequently Asked Questions",
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
                  Icon(Icons.chat),
                  Text("  Chat with Us",
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
                  Icon(Icons.phone),
                  Text("  Call Us",
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
                  Icon(Icons.calendar_today),
                  Text("  Book a Consultation",
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
                  Icon(Icons.healing),
                  Text("  Submit a Prescription",
                      style: TextStyle(
                        fontFamily: 'san serif',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
