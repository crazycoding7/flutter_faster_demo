
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/ui/page/test/customprovider/cart_model.dart';
import 'package:provider/provider.dart';

class ShareDataWidget extends InheritedWidget{
  ShareDataWidget({@required this.data,Widget child,@required this.onDataChange}):super(child:child);

  final int data;
  // 修改共享状态方法
  final Function onDataChange;

  static ShareDataWidget of(BuildContext buildContext){

    Provider.of<CartModel>(buildContext);
    return buildContext.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
    //return buildContext.getElementForInheritedWidgetOfExactType<ShareDataWidget>().widget;
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    LogUtil.e('updateShouldNotify().. $data');


    return true;
  }

}