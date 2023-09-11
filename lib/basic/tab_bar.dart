import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();

}


class _TabBarScreenState extends State<TabBarScreen> with TickerProviderStateMixin {

  // late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(vsync: this, length: 3);
  // }
  //
  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    const List<Tab> tabs = <Tab>[
      Tab(text: 'Zeroth',icon: Icon(Icons.add),),
      Tab(text: 'First'),
      Tab(text: 'Second'),
    ];
      return DefaultTabController(
        length: tabs.length,
        // The Builder widget is used to have a different BuildContext to access
        // closest DefaultTabController.
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (tabController.index ==0) {
              print("Ahmad");
              // Your code goes here.
              // To get index of current tab use tabController.index
            }
            if (!tabController.indexIsChanging) {
              print(tabController.index);
              // Your code goes here.
              // To get index of current tab use tabController.index
            }
          });
          return Scaffold(
            appBar: AppBar(
              title: Text("Example"),
              bottom: const TabBar(
                tabs: tabs,
              ),
            ),
            body: TabBarView(
              children: tabs.map((Tab tab) {
                return Center(
                  child: Text(
                    '${tab.text!} Tab',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                );
              }).toList(),
            ),
          );
        }));
    }
}
