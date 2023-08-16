import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //重写build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            '主页',
          )
        )
      ),
      body: Body() 
    );
  }
}
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        //使用这些widget是点进它的源码查看，以传入正确的参数⭐，这里传一个必选参数data，后面还需要传一个命名可选参数textDirection：排版方向（Flutter框架面向世界，有的国家的排版默认不是从左到右），枚举类型
        'hello world',
        // textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30, color: Colors.lime),
      )
    );
  }
}