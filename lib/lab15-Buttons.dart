import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: Center(
        child: _column(),
      ),
    );
  }


}

class _column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          RaisedButton(onPressed: _raisedPressed, color: Colors.green, textColor: Colors.white, child: Text("Raised Button")),
          FlatButton(onPressed: _onPressFlatButton, child: Text("FlatButton"),),
          IconButton(icon: Icon(Icons.account_box_rounded), onPressed: _onPressIcon),
          OutlineButton(onPressed: _outlinePressed, child: Text("outline"))
        ],
      );
  }

  void _raisedPressed(){print("helo");}
  void _onPressFlatButton(){print("aloha");}
  void _onPressIcon(){print("icon");}
  void _outlinePressed(){print("outline");}
}
