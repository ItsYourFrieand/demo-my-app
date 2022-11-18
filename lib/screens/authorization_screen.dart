import 'package:flutter/material.dart';
//import '/utils/utils.dart';

class ScreenAuthorization extends StatelessWidget {

  final String? login;
  final String? password;
  const ScreenAuthorization({super.key, this.login, this.password});


  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();


    return Scaffold(

      backgroundColor: Colors.white60,
      body: Center(

        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(login??"_", style:const TextStyle(fontSize:50),),

              const SizedBox(height: 30),

              Text(password??"_", style:const TextStyle(fontSize:50),),

              const SizedBox(height: 30),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.white),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text("Back", style: TextStyle(color: Colors.black),),
              ),

            ],
          ),
        ),

      ),

    );
  }
}