import 'package:flutter/material.dart';

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
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
       titleTextStyle: TextStyle(
           color: Colors.black,
         fontSize: 15,
         fontFamily: 'Poppins',
       ),
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
      cardTheme: CardTheme(
        color: Color(0xffff8c00),
        margin: EdgeInsets.zero,
      ),
    );
  }

  static ThemeData get darkTheme{
    return ThemeData(
      primaryColor: Colors.black54,
      backgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black87,
        titleTextStyle: TextStyle(
            color: Colors.white,
          fontSize: 15,
          fontFamily: 'Poppins',
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
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