import 'dart:io';
//NO CONSEGUIDO POR EL TEMA DE LA URL
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MyHomePage(),
      initialRoute: "/",
      routes:{
        "/": (BuildContext context)=> MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero"),),
      body : Center(child:getImageWidget(),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showOptions(context),
      ),
    );
  }
  File _image;
  final picker = ImagePicker();

  Widget getImageWidget(){
    if(_image==null){
      return Text("seleccione una imagen");
    }else{
      return Image.file(_image);
    }
  }

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void showOptions(BuildContext context){
    showDialog(
      context : context,
      builder: (context){
        return SimpleDialog(
          children: [
            ListTile(
              title: Text("Cámara"),
              leading: Icon(Icons.camera_alt),
              onTap:(){
                Navigator.pop(context);
                getImage(ImageSource.camera);
              }
            ),
            ListTile(
                title: Text("Galería"),
                leading: Icon(Icons.image),
                onTap:(){
                  Navigator.pop(context);
                  getImage(ImageSource.gallery);
                }
            ),
          ],
        );
      },
    );
  }
}