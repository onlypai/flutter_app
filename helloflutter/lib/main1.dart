import 'package:flutter/material.dart';

main() {
  //1.调用flutter提供的runApp全局函数（导入material库），传入一个Widget
  //Widget是一个抽象类，这里需要传入一个子类
  runApp(
    //flutter中让元素居中使用的是Center Widget，而不是属性，类似的还有Padding Opacity
    const Center(
      child: Text(
        //使用这些widget是点进它的源码查看，以传入正确的参数⭐，这里传一个必选参数data，后面还需要传一个命名可选参数textDirection：排版方向（Flutter框架面向世界，有的国家的排版默认不是从左到右），枚举类型
        'hello world',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30, color: Colors.lime),
      )
    )
  );
}