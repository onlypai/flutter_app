import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  //重写build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: const Color(0xffa45089), useMaterial3: true),//主题
        home: const HomePage()
    );
  }
}
class HomePage extends StatelessWidget{
  const HomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
                '主页',
              )
          )
      ),
      body: Column(
        children: [
          //默认构造函数 可以与任何ImageProvider(例如NetworkImage)一起使用
          const Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',),
            width: 120,
            height: 200,//这里高度其实已经变成200了，但是没有填充，使用fit属性
            fit: BoxFit.fitWidth, //fitWidth：宽度一定，高度自适应，fitHeight相反⭐
            // repeat: ImageRepeat.repeatY,// fit: BoxFit.contain情况下图片是铺不满的，使用repeat调整来将其铺满
            alignment: Alignment.topCenter,//设置图片位置

            color: Colors.lightBlue,//将颜色混入到图片里面
            colorBlendMode: BlendMode.colorDodge,//混入模式
          ),
          const SizedBox(height: 5,),
          //Image Widget还提供了几个构造函数来方便地显示不同类型的图像。使用Image.network构造函数显示来自internet的图像。
          //Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', width: 160,height: 250,),
          Image.asset('assets/images/musk.jpeg', width: 160, height: 250,),
          const FadeInImage(
            placeholder: AssetImage('assets/images/musk.jpeg'),
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            fadeOutDuration: Duration(milliseconds: 500),//占位符淡出时间
            fadeInDuration: Duration(seconds: 1),//图像淡入时间
            fadeInCurve: Curves.easeIn,//图像进入动画曲线
            fadeOutCurve: Curves.bounceInOut,//占位符离开曲线动画曲线
          )
        ],
      ),
    );
  }
}