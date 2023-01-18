
import 'package:flutter/material.dart';
import 'package:git_client_app/common/Global.dart';
import 'package:git_client_app/models/index.dart';

// 共享状态
class ProfileChangeNotifier extends ChangeNotifier {
  Profile get _profile => Global.profile;

  @override
  void notifyListeners() {
    Global.saveProfile(); //保存Profile变更
    super.notifyListeners(); //通知依赖的widget更新
  }
}