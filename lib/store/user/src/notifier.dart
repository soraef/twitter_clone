import 'package:flutter/material.dart';
import 'package:twitter_clone/store/user/src/model/user_login_status.dart';
import 'package:twitter_clone/store/user/src/model/user_regist_status.dart';

import 'model/user.dart';

class UserNotifier extends ChangeNotifier {
  User? user;
  late UserLoginStatus loginStatus;
  late UserProfileStatus profileStatus;

  UserNotifier() {
    loginStatus = UserLoginStatus.logout;
    profileStatus = UserProfileStatus.inProgress;
  }

  void login(String email, String password) {
    loginStatus = UserLoginStatus.login;
    notifyListeners();
  }

  void signUp(String email, String password) {
    loginStatus = UserLoginStatus.login;
    notifyListeners();
  }

  void logout() {
    loginStatus = UserLoginStatus.logout;
    notifyListeners();
  }

  void createUser(String name, String profile) {
    if (loginStatus == UserLoginStatus.logout) {
      throw "User作成にはLoginする必要があります";
    }

    user = User(
      id: "test-user",
      name: name,
      profile: profile,
      iconURL: "test",
    );
    profileStatus = UserProfileStatus.done;

    notifyListeners();
  }
}
