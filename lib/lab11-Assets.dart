
import 'package:flutter/material.dart';
import 'package:flutter_app/lab1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar")
      ),
      body: ListView(
        children: [
          Image.asset("assets/IMG1.jpg"),
          Image.asset("assets/IMG2.jpg"),
        ],
      ),
    );
  }
}
