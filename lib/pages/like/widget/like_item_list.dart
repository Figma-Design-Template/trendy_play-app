import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trendy_play_app/data/data.dart';

class LikeItemList extends StatefulWidget {
  const LikeItemList({super.key, required this.index});
  final int index;

  @override
  State<LikeItemList> createState() => _LikeItemListState();
}

class _LikeItemListState extends State<LikeItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.grey[100],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // 设置子内容的边框半径
              child: Image(
                image: AssetImage(popular[widget.index]['imgPath']),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popular[widget.index]['name'],
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        popular[widget.index]['description'],
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Color.fromARGB(255, 195, 58, 49),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
