import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();
final ThemeData theme = ThemeData();

class CustomTheme with ChangeNotifier{

  static bool isDarkTheme = false;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(){
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }


  static ThemeData get lightTheme{
    return theme.copyWith(
      primaryColor: Colors.white,
      backgroundColor: Colors.white,
      colorScheme: theme.colorScheme.copyWith(secondary: Color(0xffcc9510)),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
       titleTextStyle: TextStyle(
           color: Colors.black,
         fontSize: 15,
         fontFamily: 'Poppins',
       ),
        actionsIconTheme: IconThemeData(
          color: Color(0xff131313),
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(color: Color(0xff131313), ),
        headline2: TextStyle(color: Color(0xff131313),),
        bodyText1: TextStyle(color: Color(0xff131313),),
        bodyText2: TextStyle(color: Color(0xff131313),),
      ),
      cardTheme: CardTheme(
        color: Color(0xffcc9510),
        margin: EdgeInsets.zero,
      ),
      popupMenuTheme: PopupMenuThemeData(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        color: Colors.white,
        textStyle: TextStyle(
          color: Color(0xff131313),
          fontFamily: 'Poppins',
          fontSize: 12
        ),
      ),
    );
  }

  static ThemeData get darkTheme{
    return theme.copyWith(
      primaryColor: Colors.black54,
      backgroundColor: Colors.black,
      colorScheme: theme.colorScheme.copyWith(secondary: Colors.black54),
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
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        color: Colors.black54,
        textStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 12
        ),
      ),
    );
  }

}