import 'package:flutter/material.dart';

import 'register_screen.dart';

class StartApp extends StatelessWidget {

  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenRegister(),
    );
  }
}
