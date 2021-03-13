import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Center(
        //child:Container(
          //color:Colors.blue[50],
          //height:300,
          //width: 300,
        //),
        child:Container(
          //color:Color(0xffa83832),
          //color:Color(0xffa83832).withOpacity(0.5),
          //color:Color.fromRGBO(29, 200, 2, 0.5),
          color:Color.fromARGB(0xff, 0x1D, 0x22, 0x00),
          height:300,
          width: 300,
        ),
      ),
      ),
    );
  }
}
