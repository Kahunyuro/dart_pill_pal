import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pill_pa1/components/button.dart';
import 'package:pill_pa1/components/mytext_field.dart';

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

  void popUP() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              content: const Text("Welcome on Board"),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.done_outlined))
              ],
            ));
  }

  void registerpage() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

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
              MyButton(text: "Register", onTap: popUP)
            ],
          ),
        ),
      );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
