import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["grape donut", "36", Colors.red, "lib/images/grape_donut.png"],
    ["chocolate donut", "36", Colors.purple, "lib/images/chocolate_donut.png"],
    ["strawberry donut", "36", Colors.brown, "lib/images/strawberry_donut.png"],
    ["strawberry donut", "36", Colors.brown, "lib/images/strawberry_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            itemCount: donutsOnSale.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.55),
            itemBuilder: (context, index) {
              return DonutTile(
                donutFlovour: donutsOnSale[index][0],
                donutPrice: donutsOnSale[index][1],
                donutColor: donutsOnSale[index][2],
                imageName: donutsOnSale[index][3]
              );
            }));
  }
}
