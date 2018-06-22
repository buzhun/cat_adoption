import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridView"),
      ),
      body: new GridView(
        children: <Widget>[
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(

            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
        ],
        reverse: false,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 1.0),
      ),
    );
  }
}
