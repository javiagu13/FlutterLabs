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
          child: Image.network(
            "https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg", height: 200, width: 300, fit:BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
