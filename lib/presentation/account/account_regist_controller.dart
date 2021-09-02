import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/account/account_store.dart';

final accountRegistControllerProvider = ChangeNotifierProvider(
  (ref) => AccountRegistController(ref.read),
);

class AccountRegistController extends ChangeNotifier {
  AccountRegistController(this._read) {
    isValid = true;
  }

  /// state
  String? errorMessage;
  late bool isValid;

  final Reader _read;

  AccountStore get _accountStore => _read(accountStoreProvider.notifier);

  void createAccount(
    String name, {
    String? profile,
  }) async {
    final exception = await _accountStore.saveAccount(
      name,
      profile: profile,
    );

    if (exception != null) {
      isValid = false;
      errorMessage = exception.message;
      notifyListeners();
    }
  }
}
