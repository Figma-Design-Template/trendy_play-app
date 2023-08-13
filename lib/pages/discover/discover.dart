import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../layout/dis_header.dart';
import '../../data/data.dart';
import 'widget/current_popular.dart';
import 'widget/discover_tab.dart';
import 'widget/for_you_recommend.dart';

class DiscoverWidget extends StatefulWidget {
  const DiscoverWidget({super.key});

  @override
  State<DiscoverWidget> createState() => _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget> {
  final double _disPadding = 20;
  late int tabIndex = 0;

  setTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverPersistentHeader(
          delegate: DisCoverSliverPersistentHeaderDelegate(),
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: _FindSearch(),
        ),
        SliverToBoxAdapter(
            child: Container(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          height: 58,
          color: Colors.white,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: disTab.length,
            itemBuilder: (BuildContext context, int index) {
              return DiscoverTab(
                  index: index, tabIndex: tabIndex, setTabIndex: setTabIndex);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 15), //
          ),
        )),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 44,
            padding: EdgeInsets.only(
                left: _disPadding, right: _disPadding, top: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            child: const Text(
              '为您推荐',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          padding: EdgeInsets.only(
              left: _disPadding, right: _disPadding, bottom: 10, top: 10),
          height: 270,
          color: Colors.white,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ForYouRecommend(index: index);
              },
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemCount: popular.length),
        )),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 44,
            padding: EdgeInsets.only(
                left: _disPadding, right: _disPadding, top: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              children: const [
                Text(
                  '当前流行',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 列数
              mainAxisSpacing: 15.0, // 纵轴间距
              crossAxisSpacing: 15.0, // 横轴间距
              childAspectRatio: 1.0, // 子项宽高比
              mainAxisExtent: 220.0, // 纵轴方向上子项的最大高度
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CurrentPopular(index: index);
              },
              childCount: popular.length, // 网格中的子项数量
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 90,
          ),
        )
      ]),
    );
  }

  final TextEditingController textController = TextEditingController();
  final Color _textColor = const Color(0xFFE8E8E8);

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

  Container _FindSearch() {
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
