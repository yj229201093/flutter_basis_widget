# flutter_basis_widget

flutter_basis_widget

## flutter 基础组件封装(只适用于常用的样式组件，如果要涉及组件的很多属性，暂时不太好用，慢慢完善中...)
    目前包含以下组件
    1、text_widget 文本组件，可点击文本回调事件
    2、image_widget 图文文本，传图片名称即可
    3、image_text_widget 图文组件，四种风格（上图下文，下图上问，左图右文，右图左文）
    4、gesturedetector_widget 手势点击事件，单击
    5、button_widget 文本按钮组件
    6、divider_widget 分割线组件 垂直和水平
    7、text_imagetext_widget 文本和图文结合组件
    6、追加中...
    公共样式类
    1、color 常用的颜色值
    2、font  常用的字体
    3、style 常用的样式和装饰
    4、追加中...

## 展示

    ![效果](https://github.com/yj229201093/flutter_basis_widget/WechatIMG57.png)


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



