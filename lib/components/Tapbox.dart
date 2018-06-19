import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../store.dart';

class Tapbox extends StatefulWidget {

  final int catId;
  final String catName;

  Tapbox({Key key, this.catId, this.catName})
      : super(key: key);

  @override
  _TapboxState createState() => new _TapboxState();
}

typedef OnSaveCallback = Function(int catId, String catName);


class _TapboxState extends State<Tapbox> {
  bool active = false;

  Widget build(BuildContext context) {
    return new StoreConnector<AppState, OnSaveCallback>(
        converter: (Store<AppState> store) {
          return (catId, catName) {
            store.dispatch(new CollectAction('add', catId, catName));
          };
        },
        builder: (context, callback) {
          return new GestureDetector(
            // Attach the `callback` to the `onPressed` attribute
              onTap: () {
                setState(() {
                  active = !active;
                });
                callback(widget.catId, widget.catName);
              },
              child: new Icon(
                active ? Icons.favorite : Icons.favorite_border,
                color: active ? Colors.red : null,
              )
          );
        }
    );
  }
}