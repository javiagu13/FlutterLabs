import 'package:flutter/material.dart';
import 'package:flutter_app/lab17-FocusNode/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  String nameValue;
  String lastNameValue;
  String lastName2Value;

  FocusNode nameFocus;
  FocusNode lastNameFocus;
  FocusNode lastName2Focus;

  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Focus Node")),
      body: Form(
        key:formKey,
         child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Nombre:"),
                onSaved: (value){nameValue=value;},
                validator: (value){if(value.isEmpty){return "llena estp";}},
                focusNode: nameFocus,
                onEditingComplete: (){ requestFocus(context, lastNameFocus);},
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Apellido:"),
                onSaved: (value){lastNameValue=value;},
                validator: (value){ if(value.isEmpty){return "LLene este campo";}},
                focusNode: lastNameFocus,
                onEditingComplete: (){ requestFocus(context, lastName2Focus);},
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Segundo Apellido:"),
                onSaved: (value){lastName2Value=value;},
                validator: (value){if(value.isEmpty){return "llena esto";}},
                focusNode:lastName2Focus
              ),
              RaisedButton(child : Text("Mostrar segunda pantalla"), onPressed: (){
                _showSecondPage(context);

              }),
            ],
          ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameFocus.dispose();
    lastNameFocus.dispose();
    lastName2Focus.dispose();
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
     nameFocus=FocusNode();
     lastNameFocus=FocusNode();
     lastName2Focus=FocusNode();
  }

  void requestFocus(BuildContext context, FocusNode focusNode){
    FocusScope.of(context).requestFocus(focusNode);
  }

  void _showSecondPage(BuildContext context) {
    //final route = MaterialPageRoute(builder: (BuildContext context){
      //return SecondPage(name: "Marvin");
    //});
    //Navigator.of(context).push(route);
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/second", arguments: SecondPageArguments(name: this.nameValue, lastName: this.lastNameValue, lastName2: this.lastName2Value));
    }

  }

}