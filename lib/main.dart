import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Picsbay',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Picsbay'),
        ),
        body: new Center(
          child: new Text('TetsApp'),
        ),
      ),
    );
  }
}
