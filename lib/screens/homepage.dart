import 'package:flutter/material.dart';
import 'package:my_app/screens/authorization_screen.dart';

import 'register_screen.dart';

class StartApp extends StatelessWidget {

  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenRegister(),
    );
  }
}
