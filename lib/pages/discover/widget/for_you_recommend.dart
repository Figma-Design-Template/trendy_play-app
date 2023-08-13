import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../data/data.dart';
import 'package:intl/intl.dart';

class ForYouRecommend extends StatefulWidget {
  const ForYouRecommend({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<ForYouRecommend> createState() => _ForYouRecommendState();
}

class _ForYouRecommendState extends State<ForYouRecommend> {
  String formattedTime = '---';
  late Timer? timer; // 声明一个 Timer 变量

  @override
  void initState() {
    super.initState();
    // Start a periodic timer to update the time every second
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Get the current DateTime
      DateTime now = DateTime.now();
      // Define the desired date format
      DateFormat formatter = DateFormat(' HH:mm:ss');
      // Format the DateTime using the formatter
      setState(() {
        formattedTime = formatter.format(now);
      });
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(popular[widget.index]['bgPath']))),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 93, 93, 93).withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.clock,
                    size: 14,
                    color: Colors.white,
                  ),
                  Text(
                    formattedTime,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 5,
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                child: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.fire,
                      size: 14,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${popular[widget.index]['value']}k',
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
          Positioned(
            left: 10,
            bottom: 10,
            child: GestureDetector(
                onTap: () => {},
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 244, 244)
                        .withOpacity(0.7), // 将透明度应用于颜色
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 8, bottom: 8),
                  child: const Text(
                    'Buy',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: GestureDetector(
                onTap: () => {},
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 35, 35)
                        .withOpacity(0.7), // 将透明度应用于颜色
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 8, bottom: 8),
                  child: const Text(
                    '查看藏品',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
