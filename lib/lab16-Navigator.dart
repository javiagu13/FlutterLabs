
import 'package:flutter/material.dart';
import 'package:flutter_app/lab16-Navigator/MyHomePage.dart';

import 'lab16-Navigator/SecondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
    initialRoute: "/",
      routes: {
        "/":(BuildContext context)=> MyHomePage(),
        "/second":(BuildContext context)=>SecondPage(),
      },
    );
  }
}


