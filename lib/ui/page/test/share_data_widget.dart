
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';

class ShareDataWidget extends InheritedWidget{
  ShareDataWidget({@required this.data,Widget child}):super(child:child);

  final int data;

  static ShareDataWidget of(BuildContext buildContext){
    return buildContext.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
    //return buildContext.getElementForInheritedWidgetOfExactType<ShareDataWidget>().widget;
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    LogUtil.e('updateShouldNotify().. $data');


    return oldWidget.data != data;
  }

}