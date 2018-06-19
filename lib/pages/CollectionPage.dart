import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../store.dart';

class CollectionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CollectionPageState();
  }
}

class CollectionPageState extends State<CollectionPage>{

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
          appBar: new AppBar(
            title: new Text('我的收藏')
          ),
          body: new StoreConnector<AppState, List<String>>(
            converter: (Store<AppState> store) => store.state.collections,
            builder: (context, state) {
              final tiles = state.map(
                  (catId) {
                    return new ListTile(
                      title: new Text(
                        catId.toString(),
                      ),
                    );
                  }
              );
              final divided = ListTile
                  .divideTiles(
                context: context,
                tiles: tiles,
              ).toList();

              return new ListView(children: divided);
            },
          )
      );
  }
}

