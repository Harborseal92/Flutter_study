import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _idx = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("여기는 뭘까?"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("문기야 가즈아1"),
            Icon(Icons.add),
            Container(child: Text("여기는 컨테이너 안이다"),
            color: Colors.redAccent,),
            TextButton(
                child: Text("난 텍스트 버튼!"),
                onPressed: (){
                  print("텍스트 버튼 눌림!");
                },
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("FloatingActionButton 눌림");
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈"
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.more),
             label: "더보기"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: "더보기2"
          )
        ],
        onTap: (index) {
          setState(() {
            print(index);
            _idx = index;
          });
        },
        currentIndex: _idx,
      ),
    );
  }
}
