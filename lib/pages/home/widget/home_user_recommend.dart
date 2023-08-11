import 'package:flutter/material.dart';
import '../../../data/data.dart';

class Home_user_recommend extends StatelessWidget {
  const Home_user_recommend({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          width: 55,
          height: 55,
          margin: EdgeInsets.only(
              left: index == 0 ? 20 : 0,
              right: index == userData.length - 1 ? 20 : 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(userData[index]['imgPath']),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.grey[300]!)),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            double maxWidth = constraints.maxWidth;
            double contentWidth = maxWidth - 55 - 20 * 2 - 10;
            double calculatedWidth = contentWidth.clamp(80.0, 100.0);

            return Container(
              width: calculatedWidth,
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    userData[index]['name'],
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('\$ ${userData[index]['value']}'),
                ],
              ),
            );
          },
        ),
      ],
    ));
  }
}
