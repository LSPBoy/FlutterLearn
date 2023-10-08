
import 'package:flutter/material.dart';
import 'package:lsp_flutter/day07_provider_consumer/model/user_info.dart';

class LSPUserViewModel extends ChangeNotifier {
  UserInfo _userInfo;

  LSPUserViewModel(this._userInfo);

  UserInfo get userInfo => _userInfo;

  set userInfo(UserInfo value) {
    _userInfo = value;
  }
}