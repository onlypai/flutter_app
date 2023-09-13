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
              alignment:Alignment.centerLeft,
              width: 120,//宽高只以最小的边算，这里高度也为120
              height: 200,
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',),
            ),
            const SizedBox(height: 55,),
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', width: 160,height: 250,)//宽高只以最小的边算
          ],
        ),
    );
  }
}