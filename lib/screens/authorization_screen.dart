import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/utils.dart';

class ScreenAuthorization extends StatefulWidget {

  const ScreenAuthorization({super.key});

  @override
  State<ScreenAuthorization> createState() => _ScreenAuthorizationState();
}

class _ScreenAuthorizationState extends State<ScreenAuthorization> {

  late String _login = 'Admin';
  late String _password = 'Admin';

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> getPersonInfo () async {
    final prefs = await _prefs;
    final login = (prefs.getString(UtilsMaterial.loginKey) ?? '');
    final password = (prefs.getString(UtilsMaterial.passwordKey) ?? '');

    setState(() {
      _login = login;
      _password = password;
    });
  }

  @override
  void initState() {
    super.initState();
    getPersonInfo();
  }

  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  String? errorText;

  void validateSingIn() {
    if (loginController.text == _login &&
        passwordController.text == _password) {
      errorText = null;
      Navigator.pushNamed(context, '/news');
    } else {
      errorText = 'Неверный логин или пароль';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    final errorText = this.errorText;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Добро пожаловать!'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: loginController,
                  decoration: UtilsMaterial.decorationFieldTextLogin,
                  style: UtilsMaterial.sizeTextBlack,
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 15),
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
