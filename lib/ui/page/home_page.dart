
import 'package:flutter/material.dart';

/// Home页
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Center(
      child: new Text("login"),
    ),);
  }

}