import 'package:flutter/material.dart';

class YY  extends SliverPersistentHeaderDelegate{
  final double expandedHight;

  YY(this.expandedHight);
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
   return Container();
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHight;

  @override
  // TODO: implement minExtent
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}