import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/network/api.dart';
import 'package:flutterapp/network/result_data.dart';
import 'package:flutterapp/provider/user_info_provider.dart';
import 'package:flutterapp/ui/page/login/user_info_model.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

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

      // 更新数据源
      Provider.of<UserInfoProvider>(context, listen: false)
          .update(userInfoModel);

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
            child: new Text(
                "login in :  ${context.watch<UserInfoProvider>().getData()?.name}")),
      ),
    );
  }
}
