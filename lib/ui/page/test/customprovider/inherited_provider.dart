

import 'package:flutter/cupertino.dart';

/// 保存共享数据
class InheritedProvider<T> extends InheritedWidget{
  final T data;

  InheritedProvider({@required this.data,Widget child}):super(child:child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}