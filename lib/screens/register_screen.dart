import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import '/utils/utils.dart';
import 'authorization_screen.dart';

class ScreenRegister extends StatefulWidget {


  const ScreenRegister({super.key});

  @override
  State<ScreenRegister> createState() => _ScreenRegisterState();
}


class _ScreenRegisterState extends State<ScreenRegister> {

 String _login = "Login";
 String _password = "Password";
 final formKey = GlobalKey<FormState>();

 void submit (){
   final form = formKey.currentState;
   form == null ? "No text on form" : form.save();
   performLogin();
 }

 void performLogin(){
   hideKeyboard();
   Navigator.push(
       context,
       MaterialPageRoute(
           builder: (context) =>
               ScreenAuthorization(
                   login: _login,
                   password: _password,
               ),
       ),
   );
 }

 void hideKeyboard(){
   SystemChannels.textInput.invokeMethod('TextInput.hide');
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: UtilsMaterial.decorationFieldTextLogin,
                style: UtilsMaterial.sizeTextBlack,
                onSaved: (value)=> _login = value!,

              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: UtilsMaterial.decorationFieldTextPassword,
                style: UtilsMaterial.sizeTextBlack,
                obscureText: true,
                onSaved: (val) => _password = val!,

              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.resolveWith((states) => Colors.white),
                ),
                onPressed: submit,
                child: const Text("Register", style: TextStyle(color: Colors.black),),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.white),
                ),
                onPressed: (){},
                child: const Text("Show Login", style: TextStyle(color: Colors.black),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
