import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final bool isWhite;
  const DottedLine({super.key, required this.isWhite});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisSize: MainAxisSize.max, //takes max.m space of the screen
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / 15).floor(),
            (index) => SizedBox(
              width: 5,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isWhite == true ? Colors.white : Colors.grey.shade400,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
