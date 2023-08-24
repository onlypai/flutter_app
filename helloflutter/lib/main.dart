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
        body: STL()
    );
  }
}
class STL extends StatelessWidget {
  const STL({super.key});

  @override
  Widget build(BuildContext context) {
    return CText();
  }
}

class CText extends StatelessWidget {
  const CText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      //Text宽度是auto，不能设置宽度
      '《定风波》 苏轼莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。',
      textAlign: TextAlign.center,//文本对齐方式，textAlign设置居中是：多行时最长字符行为宽度，才可以显示居中
      maxLines: 2,//最大显示行数，多出就不显示了
      overflow: TextOverflow.ellipsis,//溢出显示方式，这里为省略号
      textScaleFactor: 1.5,//文字缩放倍数
      style: TextStyle(
        fontSize: 20,//单位默认px
        color: Colors.blue,
        fontWeight: FontWeight.w600
      ),
    );
  }
}
class CRich extends StatelessWidget {
  const CRich({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        style: TextStyle(

        )
      )
    );
  }
}

