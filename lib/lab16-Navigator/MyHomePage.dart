import 'package:flutter/material.dart';
import 'package:flutter_app/lab16-Navigator/SecondPage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uso Basico de Navigator")),
      body: Center(child: RaisedButton(child : Text("Mostrar segunda pantalla"), onPressed: (){
        _showSecondPage(context);
      }),)
    );
  }

  void _showSecondPage(BuildContext context) {
    //final route = MaterialPageRoute(builder: (BuildContext context){
      //return SecondPage(name: "Marvin");
    //});
    //Navigator.of(context).push(route);

    Navigator.of(context).pushNamed("/second", arguments: "Marvin");
  }
}