import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import './CatListPage.dart';

class Log extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LogState();
  }
}

class LogState extends State<Log> {
  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _userPasswordController = new TextEditingController();

  void onTextClear() {
    setState(() {
      _userNameController.text = "";
      _userPasswordController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {

//    save() async{
//      SharedPreferences prefs = await SharedPreferences.getInstance();
//      prefs.setString(mUserName, _userNameController.value.text.toString());
//    }
//
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("登录"),
        ),
        body: new Column(
          children: <Widget>[
            new Image.asset("images/banner.jpg"),
            new TextField(
              controller: _userNameController,
              decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0),
                  icon: new Icon(Icons.perm_identity),
                  labelText: "请输入用户名",
                  helperText: "注册时填写的名字"),
            ),
            new TextField(
              controller: _userPasswordController,
              decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0),
                  icon: new Icon(Icons.lock),
                  labelText: "请输入密码",
                  helperText: "登录密码"),
              obscureText: true,
            ),
            new Builder(builder: (BuildContext context) {
              return new RaisedButton(
                  onPressed: () {
                    var userName=   _userNameController.text.toString();
                    var passWord=   _userPasswordController.text.toString();
//                    save();
                    if (userName == passWord ) {
                      Navigator.of(context).push(new PageRouteBuilder(
                          pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return new CatListPage(userName);

                          }));
                    } else {
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: new Text("登录失败，用户名密码有误")));
                    }
                    onTextClear();
                  },
                  color: Colors.blue,
                  highlightColor: Colors.lightBlueAccent,
                  disabledColor: Colors.lightBlueAccent,
                  child: new Text(
                    "登录",
                    style: new TextStyle(color: Colors.white),
                  ));
            })
          ],
        ));
  }
}
