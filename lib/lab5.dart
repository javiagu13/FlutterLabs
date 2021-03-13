import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Esta es mi Appbar"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: addFunc),
            IconButton(icon: Icon(Icons.remove), onPressed: addFunc2)
          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: addFunc,
          ),
        ),
        body: Center(),
      ),
    );
  }

  void addFunc() {
  }

  void addFunc2() {
  }
}
