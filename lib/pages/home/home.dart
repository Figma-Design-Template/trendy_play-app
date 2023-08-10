import 'package:flutter/material.dart';
import '../../layout/header.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverPersistentHeader(
        delegate: MySliverPersistentHeaderDelegate(),
        pinned: true,
      ),
      SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(16),
          child: const Text(
            'Horizontal Scrollable Content',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ]));
  }
}
