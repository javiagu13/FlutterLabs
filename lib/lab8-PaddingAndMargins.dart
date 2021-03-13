import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Margenes y Padding de Container"),
        ),

        body: Column(
          children: [
            Text("hola"),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              
              child: Text("bienvenidos"),
            ),
          ],
        ),
        //body: Container(
          //width: 200,
          //height: 200,
          //color: Colors.orange,
          //margin: EdgeInsets.all(50),
          //padding: EdgeInsets.all(50),
          //child: Text(
            //"-----",
            //style: TextStyle(backgroundColor: Colors.black, fontSize:60),
          //),
        //),
      ),
    );
  }
}
