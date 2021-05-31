import 'package:flutter/material.dart';
import 'package:flutter_basis_widget/src/config/color.dart';
import 'package:flutter_basis_widget/src/utils/operation_callback.dart';

import '../flutter_basis_widget.dart';
import 'config/style.dart';

class YJButtonWidget extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final double? width;
  final double radius;
  final TextStyle textStyle;
  final Color bgColor;
  final YJClickCallBack? clickCallBack;

  const YJButtonWidget(this.title,
      {this.margin,
      this.height = 50,
      this.clickCallBack,
      this.radius = 30,
      this.textStyle = const TextStyle(color: Colors.black, fontSize: 16),
      this.bgColor = YJColor.red_color,
      this.width});
  @override
  Widget build(BuildContext context) {
    return YJGestureDetectorWidget(
      child: _buildButtonWidget(),
      clickCallBack: () {
        if (clickCallBack != null) {
          clickCallBack!();
        }
      },
    );
  }

  Widget _buildButtonWidget() {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: Decorations.setBorderRadiusBoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      alignment: Alignment.center,
      child: YJTextWidget(
        title,
        textStyle: textStyle,
      ),
    );
  }
}
