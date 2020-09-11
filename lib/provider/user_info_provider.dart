import 'package:flutter/material.dart';
import 'package:flutterapp/models/user_info_model.dart';

class UserInfoProvider extends ChangeNotifier {
  UserInfoModel _userInfoModel;

  UserInfoModel getData() {
    return _userInfoModel;
  }

  void update(UserInfoModel userInfoModel) {
    _userInfoModel = userInfoModel;
    notifyListeners();
  }
}
