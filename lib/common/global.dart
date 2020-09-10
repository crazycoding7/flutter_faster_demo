import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/common/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _themes = <MaterialColor>[Colors.blue, Colors.red, Colors.green];


/// 全局变量
class Global {
  static SharedPreferences _prefs;
  static Profile profile = new Profile();

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    // Log初始化
    LogUtil.init(
        tag: "${DateUtil.getNowDateStr()} ******【一元购】******： ",
        isDebug: true,
        maxLen: 128);
    LogUtil.v("Globel.init().");

    // 缓存初始化
    _prefs = await SharedPreferences.getInstance();

    var _profile = _prefs.getString("profile");
    if (_profile != null) {
      try {
        profile = Profile.fromJson(jsonDecode(_profile));
      } catch (e) {
        print(e);
      }
    }

    // 初始化网络
  }

  // 持久化Profile信息
  static saveProfile() =>
      _prefs.setString("profile", jsonEncode(profile.toJson()));
}
