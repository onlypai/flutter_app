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
  bool mark = false;
  _FULState(){
    print('3 State 构造函数');
    print('构造函数 mounted:$mounted');//false
  }
  @override
  void initState() {
    super.initState();
    print('initState mounted:$mounted');//true
    print('4 State initState');
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('调用initState会调用 didChangeDependencies');
  }
  @override
  void didUpdateWidget(covariant FUL oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }
  @override
  void dispose() {
    super.dispose();
    print('6 State dispose');
  }
  @override
  Widget build(BuildContext context) {
    print('5 State build');
    return Column(
      children: [
        ElevatedButton(
          onPressed: (){
            setState(() {
              mark =! mark;
            });
          },
          child: Text('change'),
        ),
        Text(mark.toString())
      ],
    );
  }
}
