import 'package:flutter/material.dart';
import 'package:flutter_basis_widget/src/utils/operation_callback.dart';
import 'package:flutter_basis_widget/src/yj_gesturedetector_widget.dart';

class YJTextWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final YJClickCallBack? clickCallBack;
  const YJTextWidget(
    this.text, {
    this.textStyle = const TextStyle(color: Colors.black, fontSize: 16),
    this.clickCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return clickCallBack == null
        ? _buildTextWidget()
        : YJGestureDetectorWidget(
            child: _buildTextWidget(),
            clickCallBack: () {
              if (clickCallBack != null) {
                clickCallBack!();
              }
            },
          );
  }

  Widget _buildTextWidget() {
    return Text(
      text,
      style: textStyle,
    );
  }
}
