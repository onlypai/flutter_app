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
      body: const Column(
        children: [
          Icon(Icons.pets, color: Colors.amber, size: 100,),
          //使用IconData的方式，第一个参数是codePoint，是一个16进制的数字
          Icon(IconData(0xe91d, fontFamily: 'MaterialIcons',),color: Colors.amber, size: 100,),
          //使用text的方式，这里不能直接传16进制数字，有两点要求：1.需要转成unicode编码，2.需要设置对应字体
          Text('\ue91d',style: TextStyle(color: Colors.lightGreen, fontFamily: 'MaterialIcons', fontSize: 100),)
        ],
      ),
    );
  }
}