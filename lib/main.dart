import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'config/router_manager.dart';
import 'common/global.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Global.init();
  runApp(OKToast(child:App()));
}

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: '一元购',
      theme: new ThemeData(primaryColor: Colors.red),
      onGenerateRoute: Router.generateRoute,
      initialRoute: RouteName.custom_provider
      );
  }
}