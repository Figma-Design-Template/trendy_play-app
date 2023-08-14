import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DisCoverSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
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
            height: 45,
            padding: const EdgeInsets.all(4),
            child: _DocIcon(),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Icon(
              FontAwesomeIcons.solidBell,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  Row _DocIcon() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: const Text(
              'Find you NFT',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ]);
  }

  @override
  double get maxExtent => 120.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
