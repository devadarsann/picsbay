import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget{
  final String searchKeyword;
  SearchScreen({
    @required this.searchKeyword
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return new SearchResult(searchKeyWord: this.searchKeyword);
  }

}

class SearchResult extends StatefulWidget {
  final String searchKeyWord;
  SearchResult({
    @required this.searchKeyWord
});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SearchResultState(searchKeyWord: this.searchKeyWord);
  }
}

class SearchResultState extends State<SearchResult> {
  final String searchKeyWord;

  SearchResultState({
    @required this.searchKeyWord
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Picsbay"),
      ),
      body: new Text(this.searchKeyWord),
    );
  }
}