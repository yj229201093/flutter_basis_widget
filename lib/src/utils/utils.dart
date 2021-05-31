import 'dart:io';

class Utils {
  ///判断平台
  static bool isIOS() {
    if (Platform.isIOS) {
      return true;
    } else {
      return false;
    }
  }

  ///获取本地图片名称
  static String getImagePath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }
}
