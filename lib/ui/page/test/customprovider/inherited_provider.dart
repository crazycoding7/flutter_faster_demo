

import 'package:flutter/cupertino.dart';

/// 保存共享数据
class InheritedProvider<T> extends InheritedWidget{
  final T data;

  InheritedProvider({@required this.data,Widget child}):super(child:child){
    print(' InheritedProvider_con 共享数据类重建 ________+++  ${this.hashCode}');
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {

    print(' updateShouldNotify ________+++  ${this.hashCode}');

    return true;
  }

}