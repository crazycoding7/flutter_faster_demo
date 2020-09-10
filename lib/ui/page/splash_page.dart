import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/config/router_manager.dart';
import 'package:flutterapp/provider/count_down_time_provider.dart';
import 'package:provider/provider.dart';

/// 启动页
class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void timeout() {
    jumpToLogin();
  }

  void jumpToLogin() {
    Navigator.of(context).pushNamed(RouteName.login);
  }

  @override
  void initState() {
    context.read<CountDownTimeProvider>().startCountDown(timeout);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
          child: new Row(
        children: [
          new Text("倒计时："),
          new RaisedButton(child: Consumer<CountDownTimeProvider>(// 实现局部刷新
              builder: (BuildContext context, CountDownTimeProvider value,
                  Widget child) {
            return new Text(' ${value.currentTime} ');
          }), onPressed: () {
            context.read<CountDownTimeProvider>().clear();
            jumpToLogin();
          })
        ],
      ) //
          ),
    );
  }
}
