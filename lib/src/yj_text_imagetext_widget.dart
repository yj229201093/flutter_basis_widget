import 'package:flutter/material.dart';

import '../flutter_basis_widget.dart';
import 'config/color.dart';
import 'config/font.dart';
import 'config/style.dart';

enum TextDirection { TOP, BOTTOM }

class YJTextAndImageTextWidget extends StatelessWidget {
  final String text;
  final double spacing;
  final String iconName;
  final String iconText;
  final double iconHeight;
  final double iconWidget;
  final double iconSpacing;
  final TextDirection textDirection;

  const YJTextAndImageTextWidget(this.text,
      {this.iconName = '001',
      this.iconText = '   ',
      this.iconHeight = 20,
      this.iconWidget = 20,
      this.iconSpacing = 5,
      this.spacing = 5,
      this.textDirection = TextDirection.TOP});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildTextAndImageTextWidget(),
    );
  }

  /// 图片文本
  Widget _buildTextAndImageTextWidget() {
    switch (textDirection) {
      case TextDirection.TOP:
        return _buildTopTextBottomImageText();
        break;
      case TextDirection.BOTTOM:
        return _buildBottomTextTopImageText();
        break;
    }
    return _buildTopTextBottomImageText();
  }

  /// 下文本 上图片文本
  Widget _buildTopTextBottomImageText() {
    return Column(
      children: [
        _buildTextWidget(),
        Padding(padding: EdgeInsets.only(top: spacing)),
        _buildImageWidget()
      ],
    );
  }

  /// 上文本 下图片文本
  Widget _buildBottomTextTopImageText() {
    return Column(
      children: [
        _buildImageWidget(),
        Padding(padding: EdgeInsets.only(top: spacing)),
        _buildTextWidget()
      ],
    );
  }

  /// 图片组件
  Widget _buildImageWidget() {
    return YJImageTextWidget(
      iconName,
      iconText,
      imageHeight: iconHeight,
      imageWidth: iconWidget,
      imageDirection: ImageDirection.LEFT,
      spacing: spacing,
    );
  }

  /// 文本组件
  Widget _buildTextWidget() {
    return YJTextWidget(text,
        textStyle:
            TextStyles.setTextStyle(YJColor.color_text_33, YJFont.font12));
  }
}
