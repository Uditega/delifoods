import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             height: constraints.maxHeight*0.25,
             color: Colors.white,
             child: Center(
               child: CircleAvatar(
                 radius: 55,
                 backgroundColor: Theme.of(context).colorScheme.secondary,
                 child: CircleAvatar(
                   radius: 50,
                   backgroundColor: Colors.white,
                   child: Icon(Icons.restaurant_menu_outlined,
                   size: 40,
                     color: Colors.black,
                   ),
                 ),
               ),
             ),
           ),
            ListTile(
              title: Text('Deli Food'),
            ),
          ],
        ),
      );
    });
  }
}
