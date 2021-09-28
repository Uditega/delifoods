import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductItem extends StatelessWidget {

  final String id;
  final String image;
  final String title;
  final double price;
  bool isFavorite;

  ProductItem(this.id, this.image, this.title, this.price, this.isFavorite);

  @override
  Widget build(BuildContext context) {

   return LayoutBuilder(builder: (ctx, constraints){
     return Container(
       decoration: BoxDecoration(
         color: Colors.white,
           borderRadius: BorderRadius.circular(15),
         boxShadow: [
           BoxShadow(
             color: Colors.grey.shade300,
             blurRadius: 90,
           ),
         ]
       ),
       child: Padding(
         padding: const EdgeInsets.fromLTRB(7, 12, 7, 12),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Image.asset(image,
               height: constraints.maxHeight*0.55,
               width: MediaQuery.of(context).size.width,
               fit: BoxFit.cover,
               ),
             ),
             SizedBox(
               height: constraints.maxHeight*0.04,
             ),
             Expanded(
               child: Text(title,
                style: TextStyle(
                    fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('NGN $price',
                   style: TextStyle(
                     fontSize: 11,
                     color: HexColor("#555555")
                   ),
                 ),
                 Icon(Icons.favorite_outline,
                 size: 18,
                 ),
               ],
             ),
           ],
         ),
       ),
     );
   });
  }
}
