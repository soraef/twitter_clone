import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException {
  const factory AppException.signInException(String message) = SignInException;
  const factory AppException.signUpException(String message) = SignUpException;
  const factory AppException.notAuthException(String message) =
      NotAuthException;
  const factory AppException.createAccountException(String message) =
      CreateAccountException;
}
