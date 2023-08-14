import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../layout/like_header.dart';
import '../../data/data.dart';
import 'widget/like_Item_list.dart';

class LikeWidget extends StatefulWidget {
  const LikeWidget({super.key});

  @override
  State<LikeWidget> createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverPersistentHeader(
        delegate:
            LikeSliverPersistentHeaderDelegate(), // 自定义的SliverPersistentHeaderDelegate
        pinned: true, // 是否固定在顶部
      ),
      // SliverToBoxAdapter(
      //   child: Container(
      //     color: Colors.white,
      //     height: 10,
      //   ),
      // ),
      const SliverToBoxAdapter(
        child: LikeSrach(shrinkOffset: 0),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 列数
            mainAxisSpacing: 15.0, // 纵轴间距
            crossAxisSpacing: 15.0, // 横轴间距
            childAspectRatio: 1.0, // 子项宽高比
            mainAxisExtent: 254.0, // 纵轴方向上子项的最大高度
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return LikeItemList(index: index);
            },
            childCount: popular.length, // 网格中的子项数量
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Container(
          color: Colors.white,
          height: 90,
        ),
      ),
    ]));
  }
}
