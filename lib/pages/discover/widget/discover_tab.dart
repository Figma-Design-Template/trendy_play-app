import 'package:flutter/material.dart';
import '../../../data/data.dart';

class DiscoverTab extends StatefulWidget {
  const DiscoverTab(
      {super.key,
      required this.index,
      required this.tabIndex,
      required this.setTabIndex});
  final int index;
  final int tabIndex;
  final Function setTabIndex;

  @override
  State<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends State<DiscoverTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {widget.setTabIndex(widget.index)},
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.tabIndex == widget.index
                ? Colors.black
                : Colors.grey[200],
          ),
          child: Text(
            disTab[widget.index],
            style: TextStyle(
              color:
                  widget.tabIndex == widget.index ? Colors.white : Colors.black,
            ),
          ),
        ));
  }
}
