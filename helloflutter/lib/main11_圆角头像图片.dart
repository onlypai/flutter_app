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
            CircleAvatar(
              //backgroundImage  是一个ImageProvider
              backgroundImage: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fcbaf7bba-dbf0-4e07-8883-f4cc45bcfeb9%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1697614128&t=98f2b3c5c7a2fdfaa640c91fc2081c24'),
              // backgroundColor: Colors.lightBlue,//背景颜色
              radius: 100,//半径
              // minRadius: ,//最小半斤
              // maxRadius: ,//最大半径
              //child 子widget
              child: Container(
                alignment: Alignment(0, .8),
                width: 200,
                height: 200,
                child: Text("兵长利威尔")
              ),
            ),
            ClipOval(
              child: Image.network(
                "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
    );
  }
}