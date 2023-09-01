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
    return const Column(
      children: [
        CText(),
        CRich(),
        CRText()
      ],
    );
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
    // rich第一个参数是InlineSpan（抽象类），有三个实现类PlaceholderSpan、TextSpan、WidgetSpan，
    // Text.rich在图文混排方面使用的较多⭐
    return const Text.rich(
      TextSpan(
        text: '111111',
        style: TextStyle(
          color: Colors.lightBlue
        ),
        children: [
          TextSpan(text: '222222', style: TextStyle(color: Colors.red),),
          //TextSpan是文字widget，想展示图片等别的元素使用WidgetSpan
          WidgetSpan(child: Icon(Icons.accessibility_new_outlined,color: Colors.red,)),
          TextSpan(text: '333333', style: TextStyle(color: Colors.cyanAccent),),
        ]
      )
    );
  }
}

class CRText extends StatelessWidget {
  const CRText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 与 Text 小部件不同，RichText 文本的默认颜色是白色，与主题背景相同⭐
        RichText(text: const TextSpan(text:'text', style: TextStyle(color: Colors.amberAccent) ))
      ],
    );
  }
}
