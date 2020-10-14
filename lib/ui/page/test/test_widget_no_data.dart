
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/ui/page/test/share_data_widget.dart';

class TestWidgetNoData extends StatefulWidget{
  @override
  _TestWidgetNoData createState() => _TestWidgetNoData();
}

class _TestWidgetNoData extends State<TestWidgetNoData>{
  int iii = 0;

  @override
  Widget build(BuildContext context) {
    LogUtil.e('_TestWidgetNoData.. build is exec ${iii}');
    return InkWell(child:Text("no data register ${iii}"),onTap: (){
      setState(() {
        iii++;
      });
    },);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LogUtil.e('didChangeDependencies()..  no data register');
  }

}