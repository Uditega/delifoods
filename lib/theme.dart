import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier{

  static bool isDarkTheme = false;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(){
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme{
    return ThemeData(
      primaryColor: Colors.white,
      backgroundColor: Colors.white,
      accentColor: HexColor("#fed702"),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
      cardTheme: CardTheme(
        color: HexColor("#fed702"),
        margin: EdgeInsets.zero,
      ),
    );
  }

  static ThemeData get darkTheme{
    return ThemeData(
      primaryColor: Colors.black54,
      accentColor: Colors.redAccent,
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
      cardTheme: CardTheme(
        color: Colors.black,
        margin: EdgeInsets.zero,
      ),
    );
  }

}