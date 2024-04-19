import 'package:flutter/material.dart';
import 'package:pill_pa1/components/button.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
                    'Contact Us',
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
                  Text("  Email Us",
                      style: TextStyle(
                        fontFamily: 'san serif',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                      
                      MyButton(text: "email", onTap: Navigator.popAndPushNamed(context, '/Disease'))
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
                  Icon(Icons.location_on),
                  Text("  Visit Us",
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
