import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Uso Basico de Navigator")),
    body: Center(
      child: Text(name),),
    );
  }
}