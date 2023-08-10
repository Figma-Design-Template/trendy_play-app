import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 45,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              '32',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: const Icon(
              FontAwesomeIcons.search,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 110.0;

  @override
  double get minExtent => 110.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
