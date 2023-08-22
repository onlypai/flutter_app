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
        body: const Body('哈哈哈哈哈哈')
    );
  }
}

class Body extends StatefulWidget {
  final String info;
  const Body(this.info ,{super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _num = 0;
  @override
  Widget build(BuildContext context) {
    print(widget);//Body
    print(widget.info);//哈哈哈哈哈哈
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _num ++;
                });
              },
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.lightBlue)),
              child: const Text("加加加"),
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _num --;
                  });
                },
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.greenAccent)),
                child: const Text("减减减")
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_num.toString())
          ],
        )
      ],
    );
  }
}
