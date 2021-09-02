import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth_store.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';
import 'package:twitter_clone/domain/auth/auth.dart';
import 'package:twitter_clone/infrastructure/account/account_repository.dart';

import '../../domain/account/src/account.dart';

final accountStoreProvider = StateNotifierProvider<AccountStore, Account?>(
  (ref) => AccountStore(ref.read),
);

/// [Account]は自分自身のUserを表すクラスで、プライベートな情報などもAccountに持ちます
/// 今回は特に[User]クラスとの違いはないですが、後々非公開にしたい情報などを入力することを想定して
/// [Account]を[User]と区別しています
class AccountStore extends StateNotifier<Account?> {
  AccountStore(this._read) : super(null);

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
      final account = Account(
        id: userAuth.uid!,
        name: name,
        profile: profile,
        iconURL: iconURL,
      );
      await _repository.save(account);
      state = account;
    } else {
      return AppException.notAuthException("サインインされていません");
    }
  }

  Future<void> loadAccount() async {
    final userAuth = _userAuth();
    if (userAuth.isSignIn) {
      final account = await _repository.fetch(userAuth.uid!);
      if (account != null) state = account;
    }
  }

  UserAuth _userAuth() {
    return _read(authStoreProvider);
  }
}
