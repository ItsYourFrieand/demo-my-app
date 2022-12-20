import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/utils/utils.dart';

class ScreenRegister extends StatefulWidget {

  const ScreenRegister({super.key});

  @override
  State<ScreenRegister> createState() => _ScreenRegisterState();
}


class _ScreenRegisterState extends State<ScreenRegister> {

 final _loginController = TextEditingController();
 final _passwordController = TextEditingController();
 final _nameController = TextEditingController();

 final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

 Future<void> setPersonInfo () async {
   final prefs = await _prefs;
   prefs.setString(UtilsMaterial.loginKey, _loginController.text);
   prefs.setString(UtilsMaterial.passwordKey, _passwordController.text);
   prefs.setString(UtilsMaterial.nameKey, _nameController.text);
 }

 void submit () {
   setPersonInfo();
   hideKeyboard();
   Navigator.pushNamed(context, '/auth');
 }

 void hideKeyboard(){
   SystemChannels.textInput.invokeMethod('TextInput.hide');
 }


  @override
  Widget build(BuildContext context) {
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
                  controller: _loginController,
                  decoration: UtilsMaterial.decorationFieldTextLogin,
                  style: UtilsMaterial.sizeTextBlack,
                  onSaved: (value)=> _loginController.text = value!,

                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: UtilsMaterial.decorationFieldTextPassword,
                  style: UtilsMaterial.sizeTextBlack,
                  obscureText: true,
                  onSaved: (val) => _passwordController.text = val!,

                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  decoration: UtilsMaterial.decorationFieldTextName,
                  style: UtilsMaterial.sizeTextBlack,
                  onSaved: (value)=> _nameController.text = value!,

                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) => Colors.white),
                  ),
                  onPressed: submit,
                  child: const Text("Register", style: TextStyle(color: Colors.black),),
                ),

              ],
            ),
          ),
      ),
    );
  }
}
