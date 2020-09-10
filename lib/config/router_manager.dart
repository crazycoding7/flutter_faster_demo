import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/provider/count_down_time_provider.dart';
import 'package:flutterapp/ui/page/login_page.dart';
import 'package:flutterapp/ui/page/splash_page.dart';
import 'package:flutterapp/ui/page/home_page.dart';
import 'package:provider/provider.dart';

class RouteName {
  static const String splash = '/splash';
  static const String home = '/';
  static const String login = 'login';
  static const String register = 'register';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(
            builder: (_) => MultiProvider(
                  providers: [
                    ChangeNotifierProvider(
                        create: (_) => CountDownTimeProvider(5, 1))
                  ],
                  child: SplashPage(),
                ));
      case RouteName.login:
        return MaterialPageRoute(builder: (content){
          return LoginPage();
        });
      case RouteName.home:
        return MaterialPageRoute(builder: (content){
          return HomePage();
        });
      default:
        return CupertinoPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
