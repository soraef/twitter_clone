import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/account/account_store.dart';
import 'package:twitter_clone/application/auth/auth_store.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';
import 'package:twitter_clone/application/user/user_store.dart';
import 'package:twitter_clone/domain/account/src/account.dart';
import 'package:twitter_clone/domain/auth/src/user_auth.dart';
import 'package:twitter_clone/infrastructure/account/account_repository.dart';

final accountServiceProvider = Provider((ref) => AccountService(ref.read));

class AccountService {
  final Reader _read;
  AccountService(this._read);

  AccountStore get _store => _read(accountStoreProvider.notifier);
  UserStore get _userStore => _read(userStoreProvider.notifier);
  AccountRepository get _repository => _read(accountRepositoryProvider);

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
      final account = Account(
        id: userAuth.uid!,
        name: name,
        profile: profile,
        iconURL: iconURL,
      );
      await _repository.save(account);
      _store.effect((_) => account);
      _userStore.effect(
        (users) => users.put(account.toUser()),
      );
    } else {
      return AppException.notAuthException("サインインされていません");
    }
  }

  Future<void> loadAccount() async {
    final userAuth = _userAuth();
    if (userAuth.isSignIn) {
      final account = await _repository.fetch(userAuth.uid!);
      if (account != null) _store.effect((prev) => account);
    }
  }

  UserAuth _userAuth() {
    return _read(authStoreProvider);
  }
}
