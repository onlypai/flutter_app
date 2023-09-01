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
        body: const Column(
          children: [
            CTBtn(),
            COutlinedBtn()
          ],
        ),
      //FloatingActionButton一般使用于Scaffold widget的floatingActionButton属性，浮动在右下角
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('floatingActionButton'),
        foregroundColor: Colors.lightBlueAccent,
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.navigation),
      ),
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
        const TextButton(onPressed: null, child: Text('Disabled')),
        TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20, color: Colors.lightBlue),
          ),
          child: const Text('Enabled')
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
      child: const Text('Click Me'),
    );
  }
}

