import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  const DashedLine(
      {super.key,
        required this.count,
        this.axis = Axis.horizontal,
        this.dashedWidth = 3.0,
        this.dashedHeight = 1.0,
        this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (_) {
        return SizedBox(
          width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(color: color),
          ),
        );
      }),
    );
  }
}
