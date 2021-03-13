
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
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
      key: ScaffoldKey,
      appBar: AppBar(
          title: Text("AppBar")
      ),
      body: Center(
        child: Text("hola"),
      ),
        drawer: getDrawer(context),
      floatingActionButton: FloatingActionButton(
        onPressed:(){ScaffoldKey.currentState.openDrawer();},
      ),
    );
  }
  Widget getDrawer(BuildContext context){
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountEmail: Text("javiagu13@gmail.com"),
          accountName: Text("Javier Aguirre"),
          currentAccountPicture: Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg"),
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Colors.blue])),
        ),

        ListTile(title: Text("Inicio"), leading: Icon(Icons.home_rounded), onTap:(){ homeButton(context);},),
      ],),
    );
  }

  void homeButton(BuildContext context){
    Navigator.pop(context);
  }
}