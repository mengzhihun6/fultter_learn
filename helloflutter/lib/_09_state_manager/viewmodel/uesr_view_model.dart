

import 'package:flutter/material.dart';
import '../model/user_info.dart';

class JGUserViewModel extends ChangeNotifier {

  UserInfo _user;

  JGUserViewModel(this._user);

  UserInfo get user => _user;

  set user(UserInfo value) {
    _user = value;
    notifyListeners();
  }
}