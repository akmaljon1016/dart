import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlovour;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const DonutTile(
      {Key? key,
      required this.donutFlovour,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
              color: donutColor[50], borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: donutColor[100],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              topRight: Radius.circular(12))),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "\$" + donutPrice,
                        style: TextStyle(
                            color: donutColor[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Image.asset(imageName),
              ),
              Text(
                donutFlovour,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Dunkings",
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite,color: Colors.pink[400],),
                    Icon(Icons.add,color: Colors.pink[400],),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
