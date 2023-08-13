import 'package:flutter/material.dart';
import '../../../data/data.dart';

class CurrentPopular extends StatefulWidget {
  const CurrentPopular({super.key, required this.index});
  final int index;

  @override
  State<CurrentPopular> createState() => _CurrentPopularState();
}

class _CurrentPopularState extends State<CurrentPopular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(0, 3),
                blurRadius: 7,
                spreadRadius: 1)
          ],
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(popular[widget.index]['imgPath']))),
    );
  }
}
