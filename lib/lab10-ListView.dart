
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage([Key key]) : super(key: key);

  List<String> names = ["Juan","Pepe","Berto","Bartolo","Juan","Pepe","Berto","Bartolo","Juan","Pepe","Berto","Bartolo"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola Mundo")),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index){
        final name=names[index];
        return ListTile(
          title: Text(name),
          leading: Icon(Icons.person),
          onTap:(){
          print(name);
          },
        );
        //return Card(child:Text(name));
      },
      ),
      /*body: ListView(
          children: [
            Card(
              child: Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg"),
            ),
            Card(
              child: Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg"),
            ),
            Card(
              child: Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg"),
            ),
            Card(
              child: Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg"),
            ),
            Card(
              child: Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg"),
            ),
          ],
        ),*/

      /*
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return Card(
                child:Image.network("https://www.lafactoriadelshow.com/full_5b758cf55574a_591566638676370987.jpg?index=$index"),
              );
            }
        ),*/
    );
  }
}