import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      home: HomePageState(),
    );
  }
}

class HomePageState extends StatefulWidget {
  @override
  _HomePageStateState createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Detector")),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
                onTap: _onTap,
                onLongPress: _onLongpress,
                child: Text("Hola", style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }

  _onTap(){
    print("hola");
  }
  _onLongpress(){
    print("longPressed");
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
