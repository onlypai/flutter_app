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
            const CTBtn(),
            const COutlinedBtn(),
            const CFilledButton(),
            CElevatedButton(),
            const CustomButton()
          ],
        ),
      //FloatingActionButton一般使用于Scaffold widget的floatingActionButton属性，浮动在右下角
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('floatingActionButton'),
        foregroundColor: Colors.lightBlueAccent,
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.navigation),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,//位置
    );
  }
}
class CTBtn extends StatelessWidget {
  const CTBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //onPressed 点击时触发的方法，为 null 就表示该按钮 禁用⭐
        const TextButton(onPressed: null, child: Text('Disabled Text')),
        TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20, color: Colors.lightBlue),
          ),
          child: const Text('Enabled Text')
        ),
      ],
    );
  }
}
class COutlinedBtn extends StatelessWidget {
  const COutlinedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Received click');
      },
      child: const Text('Outline'),
    );
  }
}
class CFilledButton extends StatelessWidget {
  const CFilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Column(children: <Widget>[
          const Text('Filled'),
          FilledButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          const FilledButton(
            onPressed: null,
            child: Text('Disabled'),
          ),
        ]),
        const SizedBox(width: 30),
        Column(children: <Widget>[
          const Text('Filled tonal'),
          //制定了MaterialApp风格主题才能看出与FilledButton的区别
          FilledButton.tonal(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          const FilledButton.tonal(
            onPressed: null,
            child: Text('Disabled'),
          ),
        ])
      ],
    );
  }
}
class CElevatedButton extends StatelessWidget {
  CElevatedButton({super.key});

  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: () {},
      child: const Text('Enabled'),
    );
  }
}

//自定义样式  图标 文字 背景 圆角
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        //设置边框圆角⭐
        shape:MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
      onPressed: (){},
      child: const Text.rich(
        TextSpan(
          children:[
            //alignment 对齐方式⭐,PlaceholderAlignment.middle表示图片的中间与基线对齐
            WidgetSpan(child: Icon(Icons.account_balance_wallet_sharp, color: Colors.red), alignment: PlaceholderAlignment.middle),
            TextSpan(text: '222222', style: TextStyle(color: Colors.red))
          ]
        )
      )
    );
  }
}
