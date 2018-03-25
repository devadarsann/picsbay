import 'dart:ui';
import 'package:flutter/material.dart';

BuildContext _applicationContext;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _applicationContext = context;
    return new MaterialApp(title: "Picsbay",
        home: new HomePage());
  }

}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  TextEditingController textEditingController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
        title: new Text("Picsbay")),
        body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new NetworkImage("https://cdn.pixabay.com/photo/2013/10/15/09/12/flower-195893_150.jpg"),
              fit: BoxFit.cover,
            ),
          ),
            child:new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    padding:const EdgeInsets.symmetric(horizontal: 4.0,vertical: 4.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    decoration: new BoxDecoration(
                        color: Colors.white70,
                        borderRadius: new BorderRadius.circular(10.0),
                        boxShadow: [new BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0
                        )]
                    ),
                    child: new TextField(
                      controller: textEditingController,
                      decoration: new InputDecoration(
                          suffixIcon: new Icon(Icons.search),
                          hintText: "Search keyword....",
                          border: InputBorder.none
                      ),
                      onSubmitted: _handleSubmitted,
                      maxLines: 1,
                    ),
                  ),
                  new Center(
                      child: new BackdropFilter(filter: new ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0))
                  )
                ],
              ),
            )
        ),
    );
  }

  void _handleSubmitted(String value) {
    Scaffold.of(context).showSnackBar(
      new SnackBar(content: new Text(value)),
    );
  }
}
