import 'package:delifoods/theme.dart';
import 'package:delifoods/views/productOverView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTheme.addListener(() {
      setState(() { });
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli food online store',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: ProductOverView(),
    );
  }
}
