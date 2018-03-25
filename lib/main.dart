import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:picsbay/SearchResult.dart';

//BuildContext _applicationContext;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    _applicationContext = context;
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
            image: new DecorationImage(image: new NetworkImage("https://pixabay.com/get/ea37b40c29f3033ed1584d05fb1d4097e374e7d41cac104497f1c870a1e9b1ba_1280.png"),
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
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(20.0),
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
    Navigator.push(context, new MaterialPageRoute(builder: (context)=> new SearchScreen(searchKeyword: value,)));
  }
}
