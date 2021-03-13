import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          //child: Icon(
            //Icons.add,
            //size:400,
            //color:Colors.green,
          //),
          child: IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed:(){
              print("hola");
            },
            iconSize:50,
          ),
        ),
      ),
    );
  }
}