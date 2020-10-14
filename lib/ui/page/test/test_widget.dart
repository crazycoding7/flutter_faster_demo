
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/ui/page/test/share_data_widget.dart';

class TestWidget extends StatefulWidget{
  @override
  _TestWidget createState() => _TestWidget();

  ValueNotifier x;

}

class _TestWidget extends State<TestWidget>{
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LogUtil.e('didChangeDependencies()..');
  }

}