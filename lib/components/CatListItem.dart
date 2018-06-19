import 'package:flutter/material.dart';
import './Tapbox.dart';

class CatListItem extends StatelessWidget {

  final int catId;
  final String catName;
  final String owner;
  final String picture;
  final String introduction;

  CatListItem({Key key, this.catId,
    this.catName,
    this.owner,
    this.picture,
    this.introduction})
      : super(key: new ObjectKey(catId));

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 0.0, 0.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Image.network(
            picture,
            width: 107.0,
            height: 130.0,
          ),
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 15.0, 24.0, 0.0),
                  child: new Text(
                    catName,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 24.0, 0.0),
                  child: new Text(
                    '主人:  ' + owner,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 13.0),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 18.0, 24.0, 2.0),
                  child: new Text(
                    introduction,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    style: new TextStyle(
                        fontSize: 12.0, fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 40.0, 0.0),
            child: new Tapbox(
              catId: catId,
              catName: catName,
            ),
          ),
        ],
      ),
    );

    return titleSection;
  }
}
