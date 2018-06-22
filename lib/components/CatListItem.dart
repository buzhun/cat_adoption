import 'package:flutter/material.dart';
import './Tapbox.dart';
import './Cat.dart';

class CatListItem extends StatelessWidget {

  final Cat cat;

  CatListItem(this.cat);

  @override
  Widget build(BuildContext context) {
    return new Container(
//      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 0.0, 0.0),
//      decoration: new BoxDecoration(
//        border: new Border(
//            bottom: new BorderSide(
//              color: Colors.grey,
//            )
//        ),
//      ),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Image.network(
            cat.picture,
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
                    cat.catName,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 24.0, 0.0),
                  child: new Text(
                    '主人:  ' + cat.owner,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 13.0),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 18.0, 24.0, 2.0),
                  child: new Text(
                    cat.introduction,
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
              catId: cat.catId,
              catName: cat.catName,
            ),
          ),
        ],
      ),
    );
  }
}
