import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/auth.dart';
import 'package:twitter_clone/presentation/auth/auth_page_state.dart';

final authPageControllerProvider = ChangeNotifierProvider(
  (ref) => AuthPageController(
    ref.read,
  ),
);

class AuthPageController extends ChangeNotifier {
  AuthPageController(this._read) {
    state = AuthPageState.init();
  }

  /// state
  late AuthPageState state;

  final Reader _read;

  AuthNotifier get _notifier => _read(authNotifierProvider);

  void signIn(String email, String password) async {
    final exception = await _notifier.signIn(email, password);
    if (exception != null) {
      state = AuthPageState.signIn(
        isFailed: true,
        errorMessage: exception.message,
      );
    }
    notifyListeners();
  }

  void signUp(String email, String password) async {
    final exception = await _notifier.signUp(email, password);
    if (exception != null) {
      state = AuthPageState.signUp(
        isFailed: true,
        errorMessage: exception.message,
      );
    }
    notifyListeners();
  }

  void togglePage() {
    state = state.map(
      signIn: (signIn) => state.toSingUpPage(),
      signUp: (signUp) => state.toSignInPage(),
    );
    notifyListeners();
  }
}
