import 'package:flutter/material.dart';

import 'sliverapp.dart';

class Smaple2 extends StatelessWidget {
  const Smaple2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          child: CustomScrollView(
            slivers: [
            SliverPersistentHeader(
            delegate: SliverApp(250),
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate
                ((context, index)=>ListTile(title:
              Text(" index : $index"),)))],
    )
    ,
    )
    );
  }
}
