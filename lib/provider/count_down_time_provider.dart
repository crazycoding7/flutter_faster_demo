import 'dart:async';

import 'package:flutter/material.dart';

// 倒计时组件(单位：秒)
class CountDownTimeProvider extends ChangeNotifier {
  final int timeMax;
  final int interval;

  int _time;
  Timer _timer;

  int get currentTime => _time;

  CountDownTimeProvider(this.timeMax, this.interval) {
    _time = timeMax;
  }

  void startCountDown(var timeOutCallBack) {
    clear();

    _timer = Timer.periodic(Duration(seconds: interval), (timer) {
      _time--;
      if (timer.tick == timeMax) {
        timer.cancel();
        timer = null;

        timeOutCallBack();
      }
      notifyListeners();
    });
  }

  void clear() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    super.dispose();
    clear();
  }
}
