
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/net/api.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutterapp/net/data_helper.dart';
import 'package:flutterapp/net/http_manager.dart';
import 'package:flutterapp/net/address.dart';

/// 登录页
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _onLogin() async {
    var result = await Api.login();
    LogUtil.v('login response: ${result}');
  }


    @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Center(
      child: new FlatButton(onPressed: (){
        _onLogin();
      }, child: new Text("login in")),
    ),);
  }

}