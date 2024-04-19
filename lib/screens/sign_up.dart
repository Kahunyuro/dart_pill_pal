import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:pill_pa1/components/button.dart';
import 'package:pill_pa1/components/textfield.dart';
import 'package:pill_pa1/screens/login.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onPressed;
  const RegisterPage({super.key, required this.onPressed});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void signup() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    final String username = _userController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;
    final String passwordConfirmation = _confirmController.text;

    final response =
        await registerUser(username, email, password, passwordConfirmation);

    // Hide the progress indicator
    Navigator.of(context).pop();

    if (response.statusCode == 201) {
      // Registration successful
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Registration Successful'),
          content: const Text('You have successfully registered.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Login()), //the import of your screen
                );
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // Registration failed
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Registration Failed'),
          content: Text('Error: ${response.body}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  Future<http.Response> registerUser(String username, String email,
      String password, String passwordConfirmation) async {
    const String apiUrl = 'http://127.0.0.1:8000/api/register';

    final Map<String, String> data = {
      'name': username,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(data),
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('Register'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            MyTextField(
              hintText: "Username",
              labeltext: "Enter Username",
              obscureText: false,
              prefixIcon: const Icon(Icons.person),
              suffixIcon: null,
              controller: _userController,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              hintText: "Email",
              labeltext: "Enter Email",
              obscureText: false,
              prefixIcon: const Icon(Icons.email),
              suffixIcon: null,
              controller: _emailController,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              hintText: 'Password',
              labeltext: "Password",
              obscureText: _isHidden,
              prefixIcon: const Icon(Icons.password),
              suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off)),
              controller: _passwordController,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              hintText: 'Confirm Password',
              labeltext: "Confirm Password",
              obscureText: _isHidden,
              prefixIcon: const Icon(Icons.password),
              suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off)),
              controller: _confirmController,
            ),
            const SizedBox(height: 20.0),
            MyButton(text: "Register", onTap: signup)
          ],
        ),
      ),
    );
  }
}
