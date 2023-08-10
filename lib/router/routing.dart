import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trendy_play_app/data/data.dart';

import '../pages/home/home.dart';
import '../pages/discover/discover.dart';
import '../pages/like/like.dart';
import '../pages/my/my.dart';
import '../views/bottomBar.dart';

import 'package:provider/provider.dart';
import '../provider/tab_index.dart';

class Routing extends StatefulWidget {
  const Routing({Key? key}) : super(key: key);

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {
  List routing = [
    const HomeWidget(),
    const DiscoverWidget(),
    const LikeWidget(),
    const MyWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    final counterIndexModel = Provider.of<CounterModel>(context);

    return Scaffold(
        body: Stack(alignment: Alignment.bottomCenter, children: [
      routing.elementAt(counterIndexModel.getIndex),
      Container(
        margin: EdgeInsets.only(
            left: displayWidth * .1,
            right: displayWidth * .1,
            bottom: displayWidth * .05),
        height: displayWidth * .155,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, -1),
                  blurRadius: 8,
                  spreadRadius: 4)
            ],
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            blendMode: BlendMode.lighten,
            child: _ButtonBarWidget(),
          ),
        ),
      )
    ]));
  }

  ButtomBar _ButtonBarWidget() => const ButtomBar();
}
