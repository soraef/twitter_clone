import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/account/dispatcher.dart';
import 'package:twitter_clone/application/auth/dispatcher.dart';

final firstLoadingControllerProvider =
    ChangeNotifierProvider<FirstLoadingController>(
  (ref) {
    return FirstLoadingController(ref.read);
  },
);

class FirstLoadingController extends ChangeNotifier {
  FirstLoadingController(this.read) {
    state = FirstLoadingState.loading;
    _accountNotifier.addListener(() {
      judge();
    });

    _authNotifier.addListener(() async {
      if (_authNotifier.userAuth.isSignIn) {
        state = FirstLoadingState.loading;
        await _accountNotifier.loadAccount();
      }
      judge();
    });
  }

  /// state
  late FirstLoadingState state;

  final Reader read;

  AccountDispatcher get _accountNotifier => read(accountDispatcherProvider);
  AuthDispatcher get _authNotifier => read(authDispatcherProvider);

  void loadStart() async {
    state = FirstLoadingState.loading;
    await _accountNotifier.loadAccount();
    notifyListeners();
  }

  void judge() {
    final _userAuth = _authNotifier.userAuth;
    final _account = _accountNotifier.account;

    if (_userAuth.isSignIn) {
      if (_account != null) {
        state = FirstLoadingState.completed;
      } else {
        state = FirstLoadingState.noAccount;
      }
    } else {
      state = FirstLoadingState.noSignIn;
    }
    notifyListeners();
  }
}

enum FirstLoadingState {
  loading,
  noSignIn,
  noAccount,
  completed,
}
