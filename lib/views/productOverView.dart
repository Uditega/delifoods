import 'package:delifoods/components/sideBar.dart';
import 'package:flutter/material.dart';

import 'package:delifoods/components/grid_item.dart';

class ProductOverView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Builder(
            builder: (context) => IconButton(
              icon: CircleAvatar(
                radius: 18,
               backgroundColor: Color(0xffff8c00),
                child: Icon(Icons.restaurant_menu_outlined,
                size: 15, color: Colors.black,
                ),
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 80, 0),
              child: Text('Deli Foods'),
            ),
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: (){}
                ),
            IconButton(
                icon: Icon(Icons.more_vert_rounded),
                onPressed: (){}
                ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: constraints.maxWidth*1,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello !',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text('Which of our dishes will you like\n order form us Today?',
                          style: TextStyle(
                              fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ),
              SizedBox(
                height: constraints.maxHeight*0.04,
              ),
              SizedBox(
                height: constraints.maxHeight*0.64,
                child: GridProduct(),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: SideBar(),
        ),
      );
    });
  }
}


