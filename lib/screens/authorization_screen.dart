import 'package:flutter/material.dart';
import '/screens/news_screen.dart';

import '../utils/utils.dart';

class ScreenAuthorization extends StatefulWidget {
  final String? login;
  final String? password;

  const ScreenAuthorization({super.key, this.login, this.password});

  @override
  State<ScreenAuthorization> createState() => _ScreenAuthorizationState();
}

class _ScreenAuthorizationState extends State<ScreenAuthorization> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  String? errorText;

  void validateSingIn() {
    if (loginController.text == widget.login &&
        passwordController.text == widget.password) {
      errorText = null;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NewsScreen(),
        ),
      );
    } else {
      errorText = 'Неверный логин или пароль';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    final errorText = this.errorText;
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginController,
                decoration: UtilsMaterial.decorationFieldTextLogin,
                style: UtilsMaterial.sizeTextBlack,
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: passwordController,
                decoration: UtilsMaterial.decorationFieldTextPassword,
                style: UtilsMaterial.sizeTextBlack,
                obscureText: true,
              ),
              if (errorText != null) Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  errorText,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                ),
                onPressed: validateSingIn,
                child: const Text(
                  "Войти",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
