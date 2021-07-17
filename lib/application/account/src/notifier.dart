import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';
import 'package:twitter_clone/infrastructure/account/account_repository.dart';

import 'model/account.dart';

final accountNotifierProvider = ChangeNotifierProvider<AccountNotifier>(
  (ref) => AccountNotifier(ref.read),
);

class AccountNotifier extends ChangeNotifier {
  AccountNotifier(this._read) {
    account = null;
  }

  /// state
  late Account? account;

  AuthNotifier get _authNotifier => _read(authNotifierProvider);
  AccountRepository get _repository => _read(accountRepositoryProvider);
  final Reader _read;

  Future<AppException?> saveAccount(
    String name, {
    String? profile,
    String? iconURL,
  }) async {
    final userAuth = _userAuth();

    if (name.isEmpty) {
      return AppException.createAccountException("名前を入力してください");
    }

    if (userAuth.isSignIn) {
      account = Account(
        id: userAuth.uid!,
        name: name,
        profile: profile,
        iconURL: iconURL,
      );
      await _repository.save(account!);
      notifyListeners();
    } else {
      return AppException.notAuthException("サインインされていません");
    }
  }

  Future<void> loadAccount() async {
    print("load");
    final userAuth = _userAuth();
    if (userAuth.isSignIn) {
      account = await _repository.fetch(userAuth.uid!);
      print(account);
      notifyListeners();
    }
  }

  UserAuth _userAuth() {
    return _authNotifier.userAuth;
  }
}
