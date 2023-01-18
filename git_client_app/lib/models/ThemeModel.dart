import 'package:flutter/material.dart';
import 'package:git_client_app/common/Global.dart';
import 'package:git_client_app/common/ProfileChangeNotifier.dart';

// 主题状态
class ThemeModel extends ProfileChangeNotifier {
  // 获取当前主题，如果未设置，则默认使用蓝色主题
  ColorSwatch get theme => Global.themes
    .firstWhere((element) => element.value == _profile.theme, orElse: () => Colors.blue);
  // 主题改变后，通知其依赖项，新主题会立即生效
  set theme(ColorSwatch color) {
    if(color != theme){
      _profile.theme = color[500].value;
      notifyListeners();
    }
  }
} 