import 'package:flutter/material.dart';
import 'package:flutter_app/lab17-Formularios/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  String nameValue;
  String lastNameValue;

  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Uso Basico de Navigator")),
      body: Form(
        key:formKey,
         child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Nombre:"),
                onSaved: (value){nameValue=value;},
                validator: (value){if(value.isEmpty){return "llena estp";}},
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Apellido:"),
                onSaved: (value){lastNameValue=value;},
                validator: (value){ if(value.isEmpty){return "LLene este campo";}},

              ),
              RaisedButton(child : Text("Mostrar segunda pantalla"), onPressed: (){
                _showSecondPage(context);

              }),
            ],
          ),
      ),
    );
  }


  void _showSecondPage(BuildContext context) {
    //final route = MaterialPageRoute(builder: (BuildContext context){
      //return SecondPage(name: "Marvin");
    //});
    //Navigator.of(context).push(route);
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/second", arguments: SecondPageArguments(name: this.nameValue, lastName: this.lastNameValue));
    }

  }

}