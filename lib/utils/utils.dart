import 'package:flutter/material.dart';

abstract class UtilsMaterial {

  static const sizeTextBlack = TextStyle(fontSize: 20, color: Colors.black);
  static const sizeTextWhite = TextStyle(fontSize: 20, color: Colors.white);
  static const decorationFieldTextLogin = InputDecoration(
      fillColor: Colors.white,
      filled: true,
      border: InputBorder.none,
      labelText: "Login"
  );
  static const decorationFieldTextPassword = InputDecoration(
      fillColor: Colors.white,
      filled: true,
      border: InputBorder.none,
      labelText: "Password"
  );

}

