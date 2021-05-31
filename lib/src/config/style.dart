import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'color.dart';
import 'font.dart';

/// 常用text样式，可扩展，多个地方使用(一般超过3个地方)就在添加常用样式，用可选参数，编译扩展
class TextStyles {
  static TextStyle title = TextStyle(
    fontSize: YJFont.font20,
    color: YJColor.color_text_33,
  );

  static TextStyle listContent = TextStyle(
    fontSize: YJFont.font14,
    color: YJColor.color_text_66,
  );

  static final TextStyle listExtra = TextStyle(
    fontSize: YJFont.font12,
    color: YJColor.color_text_99,
  );

  /// 使用参数，设置默认值
  static TextStyle setTextStyle(Color color, double fontSize,
      {FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
  }

  static TextStyle setTextStyle12(
      {Color color = YJColor.color_text_33,
      double fontSize = 14.0,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
  }

  static TextStyle setTextStyle16AndWeightBold(
      {Color color = YJColor.color_text_33,
      double fontSize = 20.0,
      FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
  }
}

// 常用装饰 圆角 半角 阴影等 可扩展，多个地方使用(一般超过3个地方)就在添加常用样式，用可选参数，编译扩展
class Decorations {
  static Decoration bottom = BoxDecoration(
    color: YJColor.color_nav_bar_bg,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8), topRight: Radius.circular(8)),
  );

  /// 设置圆角 指定圆角位置 默认上左 上右
  static BoxDecoration setBorderRadiusBoxDecoration(
      {Color color = YJColor.color_nav_bar_bg,
      BorderRadius borderRadius = const BorderRadius.only(
          topLeft: Radius.circular(8), topRight: Radius.circular(8))}) {
    return BoxDecoration(
        color: color == null ? YJColor.color_nav_bar_bg : color,
        borderRadius: borderRadius == null
            ? BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))
            : borderRadius);
  }

  ///设置圆角样式带圆角(不带分割线宽度)
  static BoxDecoration setBoxDecoration(double borderRadius,
      {Color color = YJColor.white_color}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
    );
  }
}
