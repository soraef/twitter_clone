import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/account/account_service.dart';
import 'package:twitter_clone/application/account/account_store.dart';
import 'package:twitter_clone/application/auth/auth_store.dart';

final firstLoadingControllerProvider =
    StateNotifierProvider<FirstLoadingController, FirstLoadingState>(
  (ref) {
    return FirstLoadingController(ref.read);
  },
);

class FirstLoadingController extends StateNotifier<FirstLoadingState> {
  late StreamSubscription _accountSubscription;
  late StreamSubscription _authSubscription;

  FirstLoadingController(this.read) : super(FirstLoadingState.loading) {
    _accountSubscription = _accountStore.stream.listen((account) {
      _updateState();
    });

    _authSubscription = _authStore.stream.listen((auth) async {
      if (auth.isSignIn) {
        state = FirstLoadingState.loading;
        await _accountService.loadAccount();
      }
      _updateState();
    });
  }

  final Reader read;

  AccountService get _accountService => read(accountServiceProvider);
  AccountStore get _accountStore => read(accountStoreProvider.notifier);
  AuthStore get _authStore => read(authStoreProvider.notifier);

  void loadStart() async {
    state = FirstLoadingState.loading;
    await _accountService.loadAccount();
  }

  void _updateState() {
    print("judge");
    final _userAuth = read(authStoreProvider);
    final _account = read(accountStoreProvider);

    if (_userAuth.isSignIn) {
      if (_account != null) {
        state = FirstLoadingState.completed;
      } else {
        state = FirstLoadingState.noAccount;
      }
    } else {
      state = FirstLoadingState.noSignIn;
    }
  }

  @override
  void dispose() {
    _authSubscription.cancel();
    _accountSubscription.cancel();
    super.dispose();
  }
}

enum FirstLoadingState {
  loading,
  noSignIn,
  noAccount,
  completed,
}
