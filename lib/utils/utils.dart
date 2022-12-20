import 'package:flutter/material.dart';

abstract class UtilsMaterial {
  static const loginKey = "Login";
  static const passwordKey = "Password";
  static const nameKey = "Name";
  static const sizeTextBlack = TextStyle(fontSize: 16, color: Colors.black);
  static const sizeTextWhite = TextStyle(fontSize: 16, color: Colors.white);
  static const decorationFieldTextLogin = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(202, 208, 214, 100),
        width: 1,
      ),
    ),
    labelText: "Логин",
  );
  static const decorationFieldTextPassword = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(202, 208, 214, 100),
        width: 1,
      ),
    ),
    labelText: "Пароль",
  );
  static const decorationFieldTextName = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(202, 208, 214, 100),
        width: 1,
      ),
    ),
    labelText: "Имя",
  );
}