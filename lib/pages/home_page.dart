import 'package:dart/util/my_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tabs/burger_tab.dart';
import '../tabs/donut_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 36,
                color: Colors.grey[800],
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 36,
                    color: Colors.grey[800],
                  )),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Text(
                    " EAT",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakeTab(),
                PizzaTab(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
