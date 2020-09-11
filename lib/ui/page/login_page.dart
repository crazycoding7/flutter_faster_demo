import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/models/user_info_model.dart';
import 'package:flutterapp/net/api.dart';
import 'package:flutterapp/net/result_data.dart';
import 'package:oktoast/oktoast.dart';

/// 登录页
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _onLogin() async {
    ResultData result = await Api.login();
    LogUtil.v('login response: ${result.data}');

    if (result.isSuccess()) {
      UserInfoModel userInfoModel = UserInfoModel.fromJson(result.data['data']);

      showToast('登录成功：${userInfoModel.name}');
      LogUtil.v('login response entity: $userInfoModel');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new FlatButton(
            onPressed: () {
              _onLogin();
            },
            child: new Text("login in")),
      ),
    );
  }
}
