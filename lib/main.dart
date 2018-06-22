import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import './store.dart';
import './pages/app.dart';

void main() {
  final store = new Store (AppReducer, initialState: new AppState());

  runApp(new CatReduxApp(
    title: '猫咪收养',
    subtitle: '欢迎来到宠物收养站',
    store: store,
  ));
}
