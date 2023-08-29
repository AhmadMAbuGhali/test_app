import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'calcuater.dart';

class CoustomNavBar extends StatefulWidget {
   CoustomNavBar({super.key});

  @override
  State<CoustomNavBar> createState() => _CoustomNavBarState();

}



class _CoustomNavBarState extends State<CoustomNavBar> {
  List<Widget> _buildScreens() {
    return [
      AgeCount(),
      AgeCount(),
      AgeCount(),
      AgeCount(),
      AgeCount(),

    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: "Search",
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => AgeCount(),
            '/second': (context) => AgeCount(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.add),
          title: "Add",
          activeColorPrimary: Colors.blueAccent,
          activeColorSecondary: Colors.white,
          inactiveColorPrimary: Colors.white,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: '/',
            routes: {
              '/first': (context) => AgeCount(),
              '/second': (context) => AgeCount(),
            },
          ),
          ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.message),
        title: "Messages",
        activeColorPrimary: Colors.deepOrange,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => AgeCount(),
            '/second': (context) => AgeCount(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: "Settings",
        activeColorPrimary: Colors.indigo,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => AgeCount(),
            '/second': (context) => AgeCount(),
          },
        ),
      ),
    ];
  }
  PersistentTabController? _controller;
  bool? _hideNavBar;
  BuildContext? contextt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Bar Demo')),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
            ],
          ),
        ),
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens:_buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        onWillPop: (context) async {
          await showDialog(
            context: contextt!,
            useSafeArea: true,
            builder: (context) => Container(
              height: 50.0,
              width: 50.0,
              color: Colors.white,
              child: ElevatedButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
          return false;
        },
        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.circular(20.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style15, // Choose the nav bar style with this property
      ),
    );
  }
}
