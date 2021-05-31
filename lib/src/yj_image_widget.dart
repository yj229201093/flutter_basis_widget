import 'package:flutter/cupertino.dart';
import 'package:flutter_basis_widget/src/utils/utils.dart';

class YJImageWidget extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final BoxFit fit;

  const YJImageWidget(
      {required this.imageName,
      this.height = double.infinity,
      this.width = double.infinity,
      this.fit = BoxFit.fill});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Utils.getImagePath(imageName),
      height: height,
      width: width,
      fit: fit,
    );
  }
}
