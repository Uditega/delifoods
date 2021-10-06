import 'package:delifoods/theme.dart';
import 'package:delifoods/views/productDetail.dart';
import 'package:flutter/material.dart';
import 'package:delifoods/generate_route.dart';

import 'package:delifoods/provider/product_provider.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Deli food online store',
        initialRoute: '/',
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: currentTheme.currentTheme,
        onGenerateRoute: RouteGenerator.generateRoute,
        routes: {
          ProductDetails.routeName : (ctx) => ProductDetails(),
        },
      ),
    );
  }
}
