import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageSliverHeader implements SliverPersistentHeaderDelegate {
  PageSliverHeader({
    this.minExtent,
    @required this.maxExtent,
  });
  final double minExtent;
  final double maxExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/itgro_job.png',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black54],
              stops: [0.5, 1.0],
              tileMode: TileMode.repeated,
            ),
            //boxShadow: [constants.boxShadow],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(
              titleOpacity(shrinkOffset),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 4,
          right: MediaQuery.of(context).size.width / 4,
          bottom: 16.0,
          child: Text(
            'ITGRO TEST',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0 -
                  12.0 * min(1, (shrinkOffset / (maxExtent - minExtent))),
              //color: Colors.white.withOpacity(titleOpacity(shrinkOffset)),
              color: titleColor(shrinkOffset),
            ),
          ),
        ),
      ],
    );
  }

  Color titleColor(double shrinkOffset) {
    return Color.lerp(Colors.black, Colors.white,
        1.0 - (max(0.0, shrinkOffset) * 2) / maxExtent);
  }

  double titleOpacity(double shrinkOffset) {
    // simple formula: fade out text as soon as shrinkOffset > 0
    return max(0.0, shrinkOffset) / maxExtent;
    // more complex formula: starts fading out text when shrinkOffset > minExtent
    //return 1.0 - max(0.0, (shrinkOffset - minExtent)) / (maxExtent - minExtent);
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

  @override
  // TODO: implement showOnScreenConfiguration
  PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration =>
      null;

  @override
  // TODO: implement vsync
  TickerProvider get vsync => null;
}
