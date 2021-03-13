import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Usando Scaffold"),
        ),
        body: Center(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
        ),
        drawer: Drawer(),
        endDrawer: Drawer(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
