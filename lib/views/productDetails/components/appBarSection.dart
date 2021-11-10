import 'package:flutter/material.dart';

Widget appBarSection(context, constraints, title){
  return Padding(
    padding: const EdgeInsets.only(left: 15, top: 15),
    child: Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
        ),
        SizedBox(
          width: constraints.maxWidth*0.04,
        ),
        Text(title,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    ),
  );
}