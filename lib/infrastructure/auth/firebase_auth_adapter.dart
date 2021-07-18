import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/application/auth/src/model/user_auth.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';
import 'package:twitter_clone/application/core/result/result.dart';

final authAdapterProvider = Provider((ref) => FirebaseAuthAdapter());

class FirebaseAuthAdapter {
  FirebaseAuth auth = FirebaseAuth.instance;

  /// createUserWithEmailAndPasswordのリファレンス
  /// https://firebase.google.com/docs/reference/js/firebase.auth.Auth#createuserwithemailandpassword
  Future<Result<String>> signUp(String email, String password) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Result.success(credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      late AppException exception;

      switch (e.code) {
        case "invalid-email":
          exception = AppException.signUpException(
            "メールアドレスが無効です",
          );
          break;
        case "email-already-in-use":
          exception = AppException.signUpException(
            "メールアドレスはすでに既存のユーザーに使用されています",
          );
          break;
        case "weak-password":
          exception = AppException.signUpException(
            "パスワードが簡単すぎます",
          );
          break;
        case "operation-not-allowed":
          exception = AppException.signUpException(
            "許可されていないログイン方式です",
          );
          break;
        default:
          exception = AppException.signUpException(
            "ユーザー登録に失敗しました",
          );
      }

      return Result.failure(exception);
    }
  }

  /// firebaseのsignInのエラーコードについて
  /// https://firebase.google.com/docs/reference/js/firebase.auth.Auth#signinwithemailandpassword
  Future<Result<String>> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Result.success(credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      late AppException exception;

      switch (e.code) {
        case "invalid-email":
          exception = AppException.signInException("メールアドレスが無効です");
          break;
        case "user-not-found":
          exception = AppException.signInException("ユーザーが存在しません");
          break;
        case "wrong-password":
          exception = AppException.signInException("パスワードが間違っています");
          break;
        case "user-disabled":
          exception = AppException.signInException("アカウントが無効化されています");
          break;
        default:
          exception = AppException.signInException("サインインに失敗しました");
      }

      return Result.failure(exception);
    }
  }

  Future<void> signOut() async {
    auth.signOut();
  }

  Stream<UserAuth> onChangeUserAuth() {
    return auth.authStateChanges().map((user) {
      if (user != null) {
        return UserAuth(uid: user.uid);
      } else {
        return UserAuth.none();
      }
    });
  }
}
