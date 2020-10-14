import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/ui/page/test/customprovider/cart_model.dart';
import 'package:flutterapp/ui/page/test/customprovider/change_notifier_provider.dart';
import 'package:flutterapp/ui/page/test/customprovider/test_provider_empty_widget.dart';
import 'package:flutterapp/ui/page/test/customprovider/test_provider_widget.dart';

import 'item.dart';

class ProviderRoute extends StatefulWidget {
  @override
  _ProviderRouteState createState() => _ProviderRouteState();
}

class _ProviderRouteState extends State<ProviderRoute> {
  @override
  Widget build(BuildContext context) {
    print("page build----");

    return Scaffold(
      body: Center(
        child: ChangeNotifierProvider<CartModel>(
          data: CartModel(),
          child: Builder(
            builder: (context) {
              return Column(
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      var cart = ChangeNotifierProvider.of<CartModel>(context);
                      return Text('总价: ${cart.totalPrice}');
                    },
                  ),
                  TestProviderWidget(),
                  TestProviderEmptyWidget(),
                  Builder(
                    builder: (context) {
                      print("RaisedButton build---- listener 设置为false就可以不注册依赖关系"); //在后面优化部分会用到
                      //var cart = ChangeNotifierProvider.of<CartModel>(context);
                      return RaisedButton(
                        child: Text("添加商品"),
                        onPressed: () {
                          //给购物车中添加商品，添加后总价会更新
                          ChangeNotifierProvider.of<CartModel>(context,listen: false)
                              .add(Item(20.0, 1));
                        },
                      );
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
