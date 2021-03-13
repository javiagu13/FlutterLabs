import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Uso Basico de Navigator")),
    body: Center(
      child: Text(arguments.name+" "+arguments.lastName+" "+arguments.lastName2),),
    );
  }
}

class SecondPageArguments{
  String name;
  String lastName;
  String lastName2;
  SecondPageArguments({this.name, this.lastName, this.lastName2});
}