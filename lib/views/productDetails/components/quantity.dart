import 'package:flutter/material.dart';

Widget quantitySection(constraints, context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text('Quantity :'),
          SizedBox(
            width: constraints.maxWidth * 0.04,
          ),
          Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                style: BorderStyle.solid,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Text('1'),
            ),
          ),
          SizedBox(
            width: constraints.maxWidth * 0.04,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.white,
              child: Icon(Icons.minimize_rounded,
              color: Colors.black, size: 15,
              ),
            ),
          ),
          SizedBox(
            width: constraints.maxWidth * 0.02,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor:Theme.of(context).colorScheme.secondary,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.white,
              child: Icon(Icons.add,
                color: Colors.black, size: 15,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}