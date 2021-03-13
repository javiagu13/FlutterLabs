import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Subastas Mágicas"),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(color: Colors.orange, height: 100, width: 100,),
              Text("Hola estoy centrado"),
              Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg", height: 100, width: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
