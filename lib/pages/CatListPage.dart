import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../components/CatListItem.dart';
import './CollectionPage.dart';

class CatListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CatListPageState();
  }
}

class CatListPageState extends State<CatListPage>{
  List _widgets = new List();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new CollectionPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_widgets.length > 0) {
      return new Scaffold(
          appBar: new AppBar(
            title: new Text('欢迎来到宠物收养站'),
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
            ],
          ),
          body: new ListView.builder(
              itemCount: _widgets.length,
              itemBuilder: (BuildContext context, int position) {
                return getRow(position);
              })
      );
    }
//    return new Text('暂无内容');
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }

  fetchData() async{
    final response = await http.get('http://10.14.8.118:8999/cat.json');
    List data = new JsonDecoder().convert(response.body);
    if (data != null) {
      setState(() {
        _widgets.addAll(data);
      });
    }
  }

  Widget getRow(int i) {
    final item = _widgets[i];
    return new CatListItem(
      catId: item["catId"],
      catName: item["catName"],
      owner: item["owner"],
      picture: item["picture"],
      introduction: item["introduction"],
    );
  }
}

