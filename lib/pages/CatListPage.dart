import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../components/Cat.dart';
import '../components/CatListItem.dart';
import './CollectionPage.dart';


class CatListPage extends StatefulWidget {
  final userName;

  CatListPage(this.userName);
  @override
  State<StatefulWidget> createState() {
    return new CatListPageState();
  }
}

class CatListPageState extends State<CatListPage>{
  List catData = new List();

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

    final userName = widget.userName;

    if (catData.length > 0) {
      return new Scaffold(
          appBar: new AppBar(
            title: new Text('宠物收养站，欢迎$userName'),
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
            ],
          ),
          floatingActionButton: new FloatingActionButton(
              onPressed: null,
              child: new Text("赞助", style: new TextStyle(color: Colors.white))
          ),
          drawer: new Drawer(
              child: new Center(
                  child: new Text("在猫咪小的时候模样非常的可爱呆萌，让人看了无限怜爱。随着越来越多的人加入养猫大军的行列，猫咪已经成为人类最爱的宠物之一。不过，虽然大家都很爱猫咪，但是对于该如何科学的养一只小猫，还并不太了解。往往在幼猫刚进家的时候，很多人会手足无措，不知道该怎么办。。经常有人问我，能不能给幼猫喂米饭？也有人问幼猫一顿喂几粒猫粮？能不能让幼猫单独在家？",
                    style: new TextStyle(color: Colors.blueGrey, fontSize: 16.0),
                    textAlign: TextAlign.center,
                    maxLines: 7,)
              )
          ),
          body: new ListView.builder(
              itemCount: catData.length,
              itemBuilder: (BuildContext context, int i) {
                final item = catData[i];
                final aCat = new Cat(
                  catId: item["catId"],
                  catName: item["catName"],
                  owner: item["owner"],
                  picture: item["picture"],
                  introduction: item["introduction"],
                );
                return new CatListItem(aCat);
              })
      );
    }
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }

  fetchData() async{
    final response = await http.get('http://10.14.8.118:8999/cat.json');
    List data = new JsonDecoder().convert(response.body);
    print(data);
    if (data != null) {
      setState(() {
        catData.addAll(data);
      });
    }
  }
}

