import 'package:flutter/material.dart';

class customTheme with ChangeNotifier {
  static bool isDarkThemeEnable = true;
  ThemeMode get currentTheme =>
      isDarkThemeEnable ? ThemeMode.dark : ThemeMode.light;

  void toogleTheme() {
    isDarkThemeEnable =
        !isDarkThemeEnable; // to make false to Dark theme as btn is pressed
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: Colors.lightBlueAccent,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: "ubuntu",
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.black),
          headline2: TextStyle(color: Colors.black),
          headline6: TextStyle(color: Colors.black),
          bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.black,
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.grey,
      iconTheme: const IconThemeData(color: Colors.white),
      fontFamily: "ubuntu",
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  }
}
