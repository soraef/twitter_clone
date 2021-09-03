import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/store/store.dart';
import 'package:twitter_clone/domain/auth/auth.dart';
import 'package:twitter_clone/infrastructure/auth/firebase_auth_adapter.dart';

final authStoreProvider =
    StateNotifierProvider<AuthStore, UserAuth>((ref) => AuthStore(ref.read));

class AuthStore extends Store<UserAuth> {
  final Reader _read;
  late StreamSubscription authSubscription;

  AuthStore(this._read) : super(UserAuth.none()) {
    authSubscription = _read(authAdapterProvider).onChangeUserAuth().listen(
      (authUser) {
        effect((prev) => authUser);
      },
    );
  }

  @override
  void dispose() {
    authSubscription.cancel();
    super.dispose();
  }
}
