import 'package:flutter/material.dart';

Widget duration(constraints, time){
  return Row(
    children: [
      Icon(Icons.timer,
      color: Colors.black, size: 16,
      ),
      SizedBox(
        width: constraints.maxWidth*0.02,
      ),
      Text('$time',
      style: TextStyle(
        color: Colors.black, fontSize: 13, fontFamily: 'Poppins',
      ),
      ),
    ],
  );
}