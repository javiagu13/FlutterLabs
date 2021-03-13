import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(),

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text("Activar Sonido")),
                  Icon(Icons.surround_sound),
                  Switch(value: true, onChanged: (value){})
                ],
              ),

              Row(
                children: [
                  Expanded(child: Text("Activar Sonido")),
                  Icon(Icons.surround_sound),
                  Switch(value: true, onChanged: (value){})
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(color: Colors.blue, height: 50, width: 50,),
                  Container(color: Colors.black, height: 50, width: 50,),
                  Container(color: Colors.blue, height: 50, width: 50,),
                  Container(color: Colors.black, height: 50, width: 50,),
                  Container(color: Colors.blue, height: 50, width: 50,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
