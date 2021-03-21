

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String url2 = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Hero")),
      body: Center(
        child:Hero(
          tag: url2,
        child: Image.network(url2),
        ),
      ),
    );
  }
}
