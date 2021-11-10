import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget addToCartButton(constraints, context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: constraints.maxWidth * 0.38,
        child: Card(
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Color(0xffcc9510),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                'Order Now',
                style: TextStyle(fontSize: 12,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: constraints.maxWidth * 0.38,
        child: Card(
          elevation: 0,
          color: Color(0xffcc9510),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                'Add to Cart',
                style: TextStyle(fontSize: 12,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
