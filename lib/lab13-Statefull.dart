import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyHomePage> {
  String name = "Marvin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(this.name, style: TextStyle(fontSize:  30),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
      ),
    );
  }

  void changeName(){
    setState(() {
      if (name == "Marvin"){
        name="Berga";
      }else{
        name="Marvin";
      }
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
