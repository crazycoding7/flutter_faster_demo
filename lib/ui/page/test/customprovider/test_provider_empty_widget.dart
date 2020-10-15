
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/ui/page/test/share_data_widget.dart';

import 'cart_model.dart';
import 'change_notifier_provider.dart';

class TestProviderEmptyWidget extends StatefulWidget{
  @override
  _TestProviderEmptyWidget createState() => _TestProviderEmptyWidget();
}

class _TestProviderEmptyWidget extends State<TestProviderEmptyWidget>{
  @override
  Widget build(BuildContext context) {
    LogUtil.e('_TestProviderEmptyWidget  build()..');
    return Text(' 固定数字widget ');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LogUtil.e(' _TestProviderEmptyWidget didChangeDependencies().. 无依赖的。--');
  }

}