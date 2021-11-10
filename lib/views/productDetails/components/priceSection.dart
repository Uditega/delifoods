import 'package:flutter/material.dart';

Widget priceSection(price){

  return Text('NGN ${price}',
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  ),
  );
}