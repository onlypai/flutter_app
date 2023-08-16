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

//Checkbox练习
//所有的widget都是不允许直接创建状态的，StatefulWidget也是，实现createState方法返回一个类（State<StatefulWidget>），创建一个单独的类继承自State（传入泛型），在里面创建状态
class Body extends StatefulWidget{
  const Body({ super.key });

  @override
  State<StatefulWidget> createState() {
    return BodyState();
  }
}
class BodyState extends State<Body> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,//flex布局
        children: <Widget>[
          Checkbox(value: flag, onChanged: (value) {
            //flutter中，更新状态需要再setState的回调函数中，界面才能响应⭐
            //这里其实是this.setState，是从State中继承来的
            setState(() {
              //this.flag   this一般省略，除非命名冲突时
              flag = value ?? false; //value类型为`bool?` 可能为空。。。  
            });
          }),
          const Text('同意协议')
        ],
      ),
    );
  }
}
