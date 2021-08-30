import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';
import 'package:twitter_clone/domain/auth/auth.dart';
import 'package:twitter_clone/infrastructure/auth/firebase_auth_adapter.dart';

final authDispatcherProvider = ChangeNotifierProvider(
  (ref) => AuthDispatcher(
    ref.read,
  ),
);

class AuthDispatcher extends ChangeNotifier {
  AuthDispatcher(this._read) {
    userAuth = UserAuth.none();
    authSubscription = auth.onChangeUserAuth().listen((eventUserAuth) {
      userAuth = eventUserAuth;
      notifyListeners();
    });
  }

  /// state
  late UserAuth userAuth;
  late StreamSubscription authSubscription;

  final Reader _read;

  FirebaseAuthAdapter get auth => _read(authAdapterProvider);

  Future<AppException?> signIn(String email, String password) async {
    final result = await auth.signIn(email, password);
    notifyListeners();
    return result.exception;
  }

  Future<AppException?> signUp(String email, String password) async {
    final result = await auth.signUp(email, password);
    notifyListeners();
    return result.exception;
  }

  Future<void> signOut() async {
    await auth.signOut();
    notifyListeners();
  }

  @override
  void dispose() {
    authSubscription.cancel();
    super.dispose();
  }
}
