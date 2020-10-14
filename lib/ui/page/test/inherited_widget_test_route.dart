import 'package:flutter/material.dart';
import 'package:flutterapp/ui/page/test/share_data_widget.dart';
import 'package:flutterapp/ui/page/test/test_widget.dart';
import 'package:flutterapp/ui/page/test/test_widget_no_data.dart';

class InheritedWidgetTestRoute extends StatefulWidget {
  @override
  _InheritedWidgetTestRouteState createState() =>
      new _InheritedWidgetTestRouteState();
}

class _InheritedWidgetTestRouteState extends State<InheritedWidgetTestRoute> {
  int count = -1;

  onChange(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: ShareDataWidget( //使用ShareDataWidget
            data: count,
            onDataChange: onChange(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TestWidget(),//子widget中依赖ShareDataWidget
                ),
                TestWidgetNoData(),
                Text(' count  = $count'),
                RaisedButton(
                  child: Text("Increment"),
                  //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
                  onPressed: () {
                    //setState(() {
                      ++ count;
                    //});
                  }  ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
