import 'package:flutter/material.dart';

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

  final ScaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero"),),
      body : Center(
        child: FadeInImage.assetNetwork(placeholder: "assets/loader.gif", image: "https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg", fadeInCurve: Curves.fastOutSlowIn,),
      ),
    );
  }
}