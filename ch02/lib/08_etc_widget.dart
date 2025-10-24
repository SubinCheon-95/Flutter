import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: '08.기타 나머지 위젯 실습'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Text Left!!!', style: TextStyle(fontSize: 26)),

          // Center
          Center(
            child: Text('Text Center!!!', style: TextStyle(fontSize: 26)),
          ),

          // Expanded
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.red,
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.green,
                )
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                )
              ),

              // Card
              Card(
                elevation: 3,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  child: Column(
                    children: [
                      Text('제목');
                      Text('내용')
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(,
                  children: [
                    Text('padding 10')
                  ],
                ),
              ),

              //
              Row(
                children: [
                  Icon(
                    Icons.home,
                    size: 60,
                  ),
                  Spacer(),
                  Icon(
                    Icons.factory,
                    size: 60,
                    color: Colors.red,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Icon(
                  Icons.handshake,
                  size: 60,
                  color: Colors.blue,
                  ),
                ],
              ),

              // SizeBox : 위젯과 위젯 사이에 여백을 줄 때 사용하는 위젯
              SizedBox(
                width: 300,
                height: 100,
                child: Container(
                  color: Colors.blue,
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 400,
                      height: 200,
                      color: Colors.red,
                      child:Text('Box1')
                    ),
                    Container(
                    width: 400,
                    height: 200,
                    color: Colors.green,
                    child:Text('Box2')
                    ),
                    Container(
                    width: 400,
                    height: 200,
                    color: Colors.blue,
                    child:Text('Box3')
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}