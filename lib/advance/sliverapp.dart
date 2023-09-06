import 'package:flutter/material.dart';


class SliverApp extends SliverPersistentHeaderDelegate{
 final double expandedHight;

  SliverApp(  @required this.expandedHight);
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Stack(


      children: [
        Image.network("https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        Center(
          child: Opacity(
            opacity: shrinkOffset/expandedHight,
            child: Text("SliverBar",style: TextStyle(fontSize: 24,color: Colors.white),),
          ),
        ),
        Positioned(
            top: expandedHight/  shrinkOffset,
            left: MediaQuery.of(context).size.width*0.7,
            child: Text("Hi",style: TextStyle(color: Colors.red),))
      ],
      fit: StackFit.expand,

    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHight;

  @override
  // TODO: implement minExtent
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>true;

}