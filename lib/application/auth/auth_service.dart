import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';
import 'package:twitter_clone/infrastructure/auth/firebase_auth_adapter.dart';

final authServiceProvider = Provider((ref) => AuthService(ref.read));

class AuthService {
  AuthService(this._read);

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
}
