import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';
import 'package:twitter_clone/domain/auth/auth.dart';
import 'package:twitter_clone/infrastructure/auth/firebase_auth_adapter.dart';

final authStoreProvider = StateNotifierProvider<AuthStore, UserAuth>(
  (ref) => AuthStore(ref.read),
);

class AuthStore extends StateNotifier<UserAuth> {
  AuthStore(this._read) : super(UserAuth.none()) {
    authSubscription = auth.onChangeUserAuth().listen((eventUserAuth) {
      state = eventUserAuth;
    });
  }

  /// state
  late StreamSubscription authSubscription;

  final Reader _read;

  FirebaseAuthAdapter get auth => _read(authAdapterProvider);

  Future<AppException?> signIn(String email, String password) async {
    final result = await auth.signIn(email, password);
    return result.exception;
  }

  Future<AppException?> signUp(String email, String password) async {
    final result = await auth.signUp(email, password);
    return result.exception;
  }

  Future<void> signOut() async {
    await auth.signOut();
  }

  @override
  void dispose() {
    authSubscription.cancel();
    super.dispose();
  }
}
