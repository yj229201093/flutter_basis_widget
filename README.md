# flutter_basis_widget

flutter_basis_widget

## flutter 基础组件封装
    目前包含以下组件
    1、text_widget 包含回调
    2、image_widget
    3、image_text_widget
    4、gesturedetector_widget
    5、button_widget
    公共样式类
    1、color
    2、font
    3、style

## 使用

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        'demo',
        backgroundColor: YJColor.red_color,
        titleColor: YJColor.color_text_33,
      ),
      backgroundColor: YJColor.color_text_33,
      body: ListView(
        children: [
          YJTextWidget(
            '插件包',
            textStyle: TextStyles.title,
            clickCallBack: () {
              Utils.logs("搜索");
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              YJImageTextWidget('001', '我是上',
                  textStyle:
                      TextStyles.setTextStyle(FXColor.title, FXFont.font10),
                  imageDirection: ImageDirection.TOP),
              YJImageTextWidget('002', '我是下',
                  textStyle:
                      TextStyles.setTextStyle(FXColor.title, FXFont.font10),
                  imageDirection: ImageDirection.BOTTOM),
              YJImageTextWidget('001', '我是左',
                  textStyle:
                      TextStyles.setTextStyle(FXColor.title, FXFont.font10),
                  imageDirection: ImageDirection.LEFT),
              YJImageTextWidget('002', '我是右',
                  textStyle:
                      TextStyles.setTextStyle(FXColor.title, FXFont.font10),
                  imageDirection: ImageDirection.RIGHT),
            ],
          )
        ],
      ),
    );
  }
}

