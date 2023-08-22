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
        body: FUL()
    );
  }
}
//StatelessWidget生命周期
// class STL extends StatelessWidget {
//   STL({super.key}){
//     print('先 构造函数');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('后 build函数');
//     return const Placeholder();
//   }
// }
class FUL extends StatefulWidget {
  FUL({super.key}) {
    print('1 StatefulWidget 构造函数');
  }

  @override
  State<FUL> createState() {
    print('2 StatefulWidget createState');
    return _FULState();
  }
}

class _FULState extends State<FUL> {
  _FULState(){
    print('3 State 构造函数');
  }
  @override
  void initState() {
    super.initState();
    print('4 State initState');
  }
  @override
  void dispose() {
    super.dispose();
    print('6 State dispose');
  }
  @override
  Widget build(BuildContext context) {
    print('5 State build');
    return const Placeholder();
  }
}
