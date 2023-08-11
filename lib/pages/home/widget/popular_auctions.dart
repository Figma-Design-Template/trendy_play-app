import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../data/data.dart';

class PopularAuctions extends StatefulWidget {
  const PopularAuctions({super.key, required this.index});
  final int index;

  @override
  State<PopularAuctions> createState() => _PopularAuctionsState();
}

class _PopularAuctionsState extends State<PopularAuctions> {
  final double bgWidth = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 180,
      margin: EdgeInsets.only(
          left: widget.index == 0 ? 20 : 0,
          right: widget.index == userData.length - 1 ? 20 : 0),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: 170,
            width: 176,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(popular[widget.index]['imgPath']),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: [
              Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    height: 30,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        left: 13, right: 13, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 63, 63, 63).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'maximum',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ))
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              popular[widget.index]['description'],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  popular[widget.index]['name'],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('\$ ${popular[widget.index]['value']}'),
              ],
            ),
          ),
          SizedBox(height: 10),
          _DescBtnWidget(context)
        ],
      ),
    );
  }

  Container _DescBtnWidget(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ShowUser(context),
            _LookCollectionBtn(context),
          ],
        ));
  }

  Container _ShowUser(BuildContext context) {
    return Container(
      height: bgWidth,
      width: 90,
      child: Stack(
        children: [
          Container(
            height: bgWidth,
            width: bgWidth,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/1.png',
                ),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white, // 边框颜色
                width: 2.0, // 边框宽度
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
              left: 15,
              child: Container(
                height: bgWidth,
                width: bgWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/2.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white, // 边框颜色
                    width: 2.0, // 边框宽度
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              )),
          Positioned(
              left: 30,
              child: Container(
                height: bgWidth,
                width: bgWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/3.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white, // 边框颜色
                    width: 2.0, // 边框宽度
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              )),
          Positioned(
            top: 0,
            left: 45,
            child: Container(
              height: bgWidth,
              width: bgWidth,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white, // 边框颜色
                  width: 2.0, // 边框宽度
                ),
              ),
              child: const Text(
                '99+',
                style: TextStyle(
                    color: Color.fromARGB(255, 83, 83, 83), fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _LookCollectionBtn(BuildContext context) {
    return Container(
      height: 30,
      // padding: const EdgeInsets.only(left: 10),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            children: const <Widget>[
              Text(
                'Look up',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              // Icon(
              //   FontAwesomeIcons.arrowRight,
              //   color: Colors.white,
              //   size: 16,
              // ),
            ],
          )),
    );
  }
}
