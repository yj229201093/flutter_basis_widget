import 'package:flutter/material.dart';

import 'config/color.dart';

enum DividerDirection {
  VERTICAL,
  HORIZONTAL,
}

class YJDividerWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double indent;
  final double endIndent;
  final DividerDirection? direction;
  const YJDividerWidget(
      {this.width = 0.5,
      this.height = double.infinity,
      this.color = YJColor.color_divider,
      this.indent = 0,
      this.endIndent = 0,
      this.direction});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: direction == DividerDirection.HORIZONTAL
          ? Divider(
              color: color,
              indent: indent,
              endIndent: endIndent,
            )
          : VerticalDivider(
              color: color,
              indent: indent,
              endIndent: endIndent,
            ),
    );
  }
}
