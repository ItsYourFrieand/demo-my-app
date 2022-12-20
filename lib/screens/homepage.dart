import 'package:flutter/material.dart';
import 'package:my_app/screens/news_screen.dart';
import '/screens/authorization_screen.dart';
import 'register_screen.dart';

class StartApp extends StatelessWidget {

  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/register' : (context) => const ScreenRegister(),
        '/auth' : (context) => const ScreenAuthorization(),
        '/news' : (context) => const NewsScreen()
      },
      initialRoute: '/register',
    );
  }
}
