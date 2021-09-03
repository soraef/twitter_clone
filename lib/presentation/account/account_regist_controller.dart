import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/account/account_service.dart';

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

  AccountService get _accountService => _read(accountServiceProvider);

  void createAccount(
    String name, {
    String? profile,
  }) async {
    final exception = await _accountService.saveAccount(
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
