import 'package:flutter/material.dart';

main(){
  runApp(
    //使用material风格来编写app，它里面默认排版风格就是左到右
    MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              '主页',
            )
          )
        ),
        body: const Center(
          child: Text(
            //使用这些widget是点进它的源码查看，以传入正确的参数⭐，这里传一个必选参数data，后面还需要传一个命名可选参数textDirection：排版方向（Flutter框架面向世界，有的国家的排版默认不是从左到右），枚举类型
            'hello world',
            // textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 30, color: Colors.lime),
          )
        )
      )
    )
  );
}