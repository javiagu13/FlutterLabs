import 'package:flutter/material.dart';
import 'package:flutter_app/lab17-Formularios/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  TextEditingController nameTextController = TextEditingController();

  TextEditingController lastNameTextController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uso Basico de Navigator")),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Nombre:"),
            controller: nameTextController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Apellido:"),
            controller: lastNameTextController,
          ),
          RaisedButton(child : Text("Mostrar segunda pantalla"), onPressed: (){
            _showSecondPage(context);
          }),
        ],
      )
    );
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }
  void _showSecondPage(BuildContext context) {
    //final route = MaterialPageRoute(builder: (BuildContext context){
      //return SecondPage(name: "Marvin");
    //});
    //Navigator.of(context).push(route);

    Navigator.of(context).pushNamed("/second", arguments: SecondPageArguments(name: nameTextController.text, lastName: lastNameTextController.text));
  }
}