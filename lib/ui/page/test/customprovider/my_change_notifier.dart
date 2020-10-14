
import 'package:flutter/cupertino.dart';

class MyChangeNotifier implements Listenable{
  List listeners=[];

  @override
  void addListener(listener) {
    listeners.add(listener);
  }

  @override
  void removeListener(listener) {
    listeners.remove(listener);
  }

  void notifyListeners(){
    listeners.forEach((item) { item();});
  }
  
}