import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Picsbay",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Picsbay"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: ()=>_onSearch()),
          new TextEditingController(
            text:
          )
        ],
      ),
      body: new GridView.count(
          crossAxisCount: 3,
        children: <Widget>[],
      ),
    );
  }

  _onSearch() {

  }
}