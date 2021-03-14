import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myDialog(),
    );
  }


}

class myDialog extends StatelessWidget {
final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(title: Text("SnackBar")),
            body: Center(
              child: FlatButton(
              child: Text("Mostrar"),
              onPressed: (){_showDialog(context);},
            ),
        ),
    );
  }

void _showDialog(BuildContext context){
showDialog(context: context, builder: (BuildContext context){
return SimpleDialog(
title: Text("Seleccione"),
children: [
ListTile(title: Text("Eliminar"), leading: Icon(Icons.delete))
],
);
},);
}
}


