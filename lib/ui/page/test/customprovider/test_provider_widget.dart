
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/ui/page/test/share_data_widget.dart';

import 'cart_model.dart';
import 'change_notifier_provider.dart';

class TestProviderWidget extends StatefulWidget{
  @override
  _TestProviderWidget createState() => _TestProviderWidget();
}

class _TestProviderWidget extends State<TestProviderWidget>{
  @override
  Widget build(BuildContext context) {
    LogUtil.e('_TestProviderWidget  build()..');
    var cart = ChangeNotifierProvider.of<CartModel>(context);
    return Text(' 数字变更widget ${cart.totalPrice} ');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LogUtil.e('didChangeDependencies()..--  有依赖的');
  }

}