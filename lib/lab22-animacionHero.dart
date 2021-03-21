import 'dart:ffi';
//NO CONSEGUIDO POR EL TEMA DE LA URL
import 'package:flutter_app/lab22-animacionHeroSPage/lab22-animacionHeroSPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MyHomePage(),
      initialRoute: "/",
      routes:{
        "/": (BuildContext context)=> MyHomePage(),
        "/second": (BuildContext context) => SecondPage(),
      },
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
      body : ListView.builder(itemBuilder: (context, index){
        final url ="https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg";
        return InkWell(
          onTap: (){
            Navigator.of(context).pushNamed("/second", arguments:url);
          },
          child: Hero(
            tag: url,
            child: Card(
              child: Image.network(url,),
              //puedes tener como child de card -> fade in image, y placeholder: AssetImage(gif)
            ),
          ),
        );
      }),
    );
  }
}