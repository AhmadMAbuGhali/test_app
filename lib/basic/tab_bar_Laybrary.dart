import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import 'calcuater.dart';

class TabBarLay extends StatefulWidget {
  const TabBarLay({super.key});

  @override
  State<TabBarLay> createState() => _TabBarLayState();
}

const List<Tab> tabs = <Tab>[
  Tab(text: 'Zeroth', icon: Icon(Icons.add),),
  Tab(text: 'First'),
  Tab(text: 'Second'),
];

class _TabBarLayState extends State<TabBarLay> {


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.purple,
                unselectedBackgroundColor: Colors.blue[300],
                duration: 15,
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: "car",
                  ),
                  Tab(
                    icon: Icon(Icons.directions_transit),
                    text: "transit",
                  ),
                  Tab(child: Image.asset("assets/images/goToLogin.png"),),
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    AgeCount(),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Image.network("https://openvpn.net/wp-content/uploads/site-to-site-openvpn-img.jpg"),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
