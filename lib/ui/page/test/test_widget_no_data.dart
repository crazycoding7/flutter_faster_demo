
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/ui/page/test/share_data_widget.dart';

class TestWidgetNoData extends StatefulWidget{
  @override
  _TestWidgetNoData createState() => _TestWidgetNoData();
}

class _TestWidgetNoData extends State<TestWidgetNoData>{
  @override
  Widget build(BuildContext context) {
    LogUtil.e('_TestWidgetNoData.. build is exec');
    return Text("no data register");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LogUtil.e('didChangeDependencies()..  no data register');
  }

}