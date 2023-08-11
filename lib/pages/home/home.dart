import 'package:flutter/material.dart';
import '../../layout/header.dart';
import 'widget/home_user_recommend.dart';
import '../../data/data.dart';
import 'widget/popular_auctions.dart';
import 'widget/top_collection.dart';

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
          padding: const EdgeInsets.only(top: 10),
          height: 80,
          color: Colors.white,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: userData.length,
            separatorBuilder: (context, index) =>
                const SizedBox(width: 15), // Add a separator
            itemBuilder: (context, index) {
              return Home_user_recommend(
                  index: index); // Pass the index parameter
            },
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: popular.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15), // Add a separator
                  itemBuilder: (context, index) {
                    return PopularAuctions(
                        index: index); // Pass the index parameter
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Top Collection',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return TopCollection(index: index);
          },
          childCount: popular.length,
        ),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(height: 100),
      )
    ]));
  }
}
