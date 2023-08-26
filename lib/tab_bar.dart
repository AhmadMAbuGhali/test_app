import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();

}


class _TabBarScreenState extends State<TabBarScreen> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
         Tab(icon:  Icon(Icons.flight),),
         Tab(icon:  Icon(Icons.car_crash_rounded),),
         Tab(icon:  Icon(Icons.train),),
        ],),
      ),
      body: Center(child: Text("Hello"),) ,
    );
  }
}
