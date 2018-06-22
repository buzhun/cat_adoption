import 'package:flutter/material.dart';

class PetList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PetListState();
  }
}
class PetListState extends State {

  List<int> items = List.generate(17, (i) => i);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border(
                bottom: new BorderSide(
                  color: Colors.grey,
                )
            ),
          ),
          child: new Row(children: <Widget>[
            new Icon(
              Icons.chat,
              color: Colors.amber,
            ),
            new Expanded(
              child: new Text(
                "hello world hello world hello world",
                textAlign: TextAlign.right,
              ),
            )
          ]),
        ),
        new Container(
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border(
                bottom: new BorderSide(
                  color: Colors.grey,
                )
            ),
          ),
          child: new Row(children: <Widget>[
            new Icon(
              Icons.chat,
              color: Colors.amber,
            ),
            new Expanded(
              child: new Text(
                "hello world hello world hello world",
                textAlign: TextAlign.right,
              ),
            )
          ]),
        ),
        new Container(
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border(
                bottom: new BorderSide(
                  color: Colors.grey,
                )
            ),
          ),
          child: new Row(children: <Widget>[
            new Icon(
              Icons.chat,
              color: Colors.amber,
            ),
            new Expanded(
              child: new Text(
                "hello world hello world hello world",
                textAlign: TextAlign.right,
              ),
            )
          ]),
        ),
      ],
    );
//    return new Column(children: <Widget>[
//      new Image.asset("images/banner.jpg"),
//      new Text(
//        '欢迎来到宠物收养站～',
//        style: new TextStyle(color: Colors.black87, fontSize: 18.0),
//      ),
//      return new ListView.builder(
//          itemCount: items.length,
//          itemBuilder: (context, index) {
//            return ListTile(
//              title: Text('Index$index')
//            );
//          },
//      );
//    ]);
  }
}
