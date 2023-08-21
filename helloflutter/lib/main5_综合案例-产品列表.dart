import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  //重写build
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: HomePage()
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
      body: const Body() 
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const <Widget>[
          ProductItem("Apple1", "Macbook Product1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          ProductItem("Apple2", "Macbook Product2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          ProductItem("Apple3", "Macbook Product3", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
        ],
      ),
    );
  }
}

//列表成员ProductItem
class ProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  const ProductItem(this.title, this.desc, this.imageURL, {super.key});

  //样式
  final style1 = const TextStyle(fontSize: 25, color: Colors.brown);
  final style2 = const TextStyle(fontSize: 20, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Center(
      //使用一个Container来给Column外面设置样式
      child: Container(
        padding: const EdgeInsets.all(12),
        //装饰
        decoration: BoxDecoration(
          border: Border.all(width: 5,color: Colors.lightBlueAccent)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//交叉轴，Column是列，所以左右方向是交叉轴
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(title, style: style1),
              ],
            ),
            const SizedBox(height: 8),//使用SizedBox实现类似margin的功能，这只是方式之一
            Text(desc, style: style2),
            const SizedBox(height: 8),
            Image.network(imageURL)
          ],
        ),
      ),
    );
  }
}