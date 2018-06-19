import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import './CatListPage.dart';
import '../store.dart';

class CatReduxApp extends StatelessWidget {
  final Store<AppState> store;
  final String title;
  final String subtitle;

  CatReduxApp({Key key, this.store, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        title: '宠物收养',
        home: new Scaffold(
          body: new CatListPage(),
        ),
      ),
    );
  }
}
