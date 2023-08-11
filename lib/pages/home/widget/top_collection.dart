import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../data/data.dart';

class TopCollection extends StatefulWidget {
  const TopCollection({super.key, required this.index});
  final int index;

  @override
  State<TopCollection> createState() => _TopCollectionState();
}

class _TopCollectionState extends State<TopCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(popular[widget.index]['avaImgPath']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  popular[widget.index]['name'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  popular[widget.index]['description'],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(right: 10, top: 4, bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${popular[widget.index]['total']}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(77, 77, 77, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Row(
                  children: [
                    Icon(
                      popular[widget.index]['change'] > 0
                          ? FontAwesomeIcons.arrowUp
                          : popular[widget.index]['change'] == 0
                              ? FontAwesomeIcons.minus
                              : FontAwesomeIcons.arrowDown,
                      color: popular[widget.index]['change'] > 0
                          ? Colors.green
                          : popular[widget.index]['change'] == 0
                              ? Colors.grey
                              : Colors.red,
                      size: 10,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${popular[widget.index]['change']}',
                          style: TextStyle(
                            fontSize: 12,
                            color: popular[widget.index]['change'] > 0
                                ? Colors.green
                                : popular[widget.index]['change'] == 0
                                    ? Colors.grey
                                    : Colors.red,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
