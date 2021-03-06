import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/provider/count_down_time_provider.dart';
import 'package:flutterapp/provider/user_info_provider.dart';
import 'package:flutterapp/ui/page/login/login_page.dart';
import 'package:flutterapp/ui/page/splash_page.dart';
import 'package:flutterapp/ui/page/home/home_page.dart';
import 'package:flutterapp/ui/page/test/customprovider/provider_route.dart';
import 'package:flutterapp/ui/page/test/inherited_widget_test_route.dart';
import 'package:provider/provider.dart';

class RouteName {
  static const String splash = '/splash';
  static const String home = '/';
  static const String login = 'login';
  static const String register = 'register';
  static const String test = 'test';
  static const String custom_provider = 'custom_provider';

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
        return MaterialPageRoute(
            builder: (_) => MultiProvider(
              providers: [
                ChangeNotifierProvider(
                    create: (_) => UserInfoProvider())
              ],
              child: LoginPage(),
            ));
      case RouteName.home:
        return MaterialPageRoute(builder: (content){
          return HomePage();
        });
      case RouteName.test:
        return MaterialPageRoute(builder: (content){
          return InheritedWidgetTestRoute();
        });
      case RouteName.custom_provider:
        return MaterialPageRoute(builder: (content){
          return ProviderRoute();
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
