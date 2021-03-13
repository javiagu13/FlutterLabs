
import 'package:flutter/material.dart';
import 'package:flutter_app/lab17-FocusNode/MyHomePage.dart';

import 'lab17-FocusNode/SecondPage.dart';

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


