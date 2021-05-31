import 'package:flutter/material.dart';
import 'package:flutter_basis_widget/src/utils/operation_callback.dart';

class YJGestureDetectorWidget extends StatelessWidget {
  final Widget child;
  final YJClickCallBack? clickCallBack;

  YJGestureDetectorWidget({required this.child, this.clickCallBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        if (clickCallBack != null) {
          clickCallBack!();
        }
      },
    );
  }
}
