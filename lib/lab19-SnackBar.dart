import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("SnackBar")),
        body: Center(
          child: FlatButton(
            child: Text("Mostrar"),
            onPressed: showSnackBar,
          ),
        ),
      ),
    );
  }

  void showSnackBar(){
    SnackBar snackBar = SnackBar(
      content: Text("Elemento elminado"),
    action: SnackBarAction(label:"cancelar", onPressed: (){
      print("Cancelado");
      },
    ),);

    scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
