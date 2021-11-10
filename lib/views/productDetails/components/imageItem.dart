import 'package:flutter/material.dart';

Widget imageItem(imageUrl){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: CircleAvatar(
          radius: 86,
          backgroundColor: Colors.black38,
          child: CircleAvatar(
            radius: 85,
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Card(
              elevation: 0,
              color: Color(0xfff4f4f4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Icon(Icons.share,
                  color: Color(0xffffba14), size: 15,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Card(
              elevation: 0,
              color: Color(0xfff4f4f4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Icon(Icons.favorite_outline_rounded,
                  color: Color(0xffffba14), size: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}