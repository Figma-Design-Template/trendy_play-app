import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikeSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    print('shrinkOffset: $shrinkOffset');
    print('overlapsContent: $overlapsContent');

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
              'Like',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ]);
  }

  @override
  double get maxExtent => 120.0;

  @override
  double get minExtent => 110.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class LikeSrach extends StatefulWidget {
  const LikeSrach({super.key, required this.shrinkOffset});
  final double shrinkOffset;

  @override
  State<LikeSrach> createState() => _LikeSrachState();
}

class _LikeSrachState extends State<LikeSrach> {
  final TextEditingController textController = TextEditingController();
  final Color _textColor = const Color(0xFFE8E8E8);
  final double _disPadding = 20;

  @override
  void dispose() {
    textController.dispose(); // 释放控制器
    super.dispose();
  }

  @override
  void initState() {
    //监听输入改变
    textController.addListener(() {
      print(textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
          top: 10, bottom: 10, left: _disPadding, right: _disPadding),
      child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: 'Search For NFT or Artists',
            contentPadding: EdgeInsets.all(12),
            prefixIcon: Icon(
              FontAwesomeIcons.search,
              color: Colors.grey,
            ),
            prefixIconConstraints: BoxConstraints(
              minWidth: 60,
            ),
            fillColor: Color(0xFFE8E8E8),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            focusColor: Color(0xFFE8E8E8),
            filled: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE8E8E8)),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
          ),
          focusNode: FocusNode(),
          cursorColor: const Color.fromARGB(255, 118, 118, 118),
          style: const TextStyle(fontSize: 18),
          clipBehavior: Clip.antiAlias,
          // onChanged 监听文本
          onChanged: (v) {
            print("onChange: $v");
          }),
    );
  }
}
