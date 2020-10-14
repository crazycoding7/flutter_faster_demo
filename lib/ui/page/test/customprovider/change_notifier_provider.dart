import 'package:flutter/cupertino.dart';
import 'package:flutterapp/ui/page/test/customprovider/inherited_provider.dart';
import 'package:flutterapp/ui/page/test/customprovider/my_change_notifier.dart';
import 'package:flutterapp/ui/page/test/share_data_widget.dart';

// 该方法用于在Dart中获取模板类型
Type _typeOf<T>() {
  return T;
}

/// 订阅者
class ChangeNotifierProvider<T extends MyChangeNotifier>
    extends StatefulWidget {
  final Widget child;
  final T data;

  ChangeNotifierProvider({
    Key key,
    this.data,
    this.child,
  });

  //添加一个listen参数，表示是否建立依赖关系
  static T of<T>(BuildContext context, {bool listen = true}) {
    //final type = _typeOf<InheritedProvider<T>>();
    final provider = listen
        ? context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>()
        : context
            .getElementForInheritedWidgetOfExactType<InheritedProvider<T>>()
            ?.widget as InheritedProvider;

    print(
        ' 获取 共享数据 方法   ${provider}   ${context.dependOnInheritedWidgetOfExactType<ShareDataWidget>()}');

    return provider.data;
  }

  @override
  State<StatefulWidget> createState() {
    return _ChangeNotifierProviderState<T>();
  }
}

class _ChangeNotifierProviderState<T extends MyChangeNotifier>
    extends State<ChangeNotifierProvider<T>> {
  void update() {
    print(' provider  更新 setState ....=============');

    setState(() {});
  }

  @override
  void didUpdateWidget(ChangeNotifierProvider<MyChangeNotifier> oldWidget) {
    print(' provider  didUpdateWidget ...${oldWidget.data}  ${widget.data}');


    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    print(' provider  注册通知 ....=============');
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    print(' provider  销毁通知 ....=============');
    widget.data.removeListener(update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(' provider  builder ....============= widget.child =  ${widget.child.hashCode} widget.data = ${widget.data}');
    return InheritedProvider<T>(
      data: widget.data,
      child: widget.child,
    );
  }
}
