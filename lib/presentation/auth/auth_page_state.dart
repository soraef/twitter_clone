import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_state.freezed.dart';

@freezed
class AuthPageState with _$AuthPageState {
  const AuthPageState._();
  const factory AuthPageState.signIn({
    required bool isFailed,
    required String errorMessage,
  }) = SignInPage;
  const factory AuthPageState.signUp({
    required bool isFailed,
    required String errorMessage,
  }) = SingUpPage;

  factory AuthPageState.init() {
    return AuthPageState.signIn(isFailed: false, errorMessage: "");
  }

  AuthPageState toSignInPage() {
    return AuthPageState.signIn(isFailed: false, errorMessage: "");
  }

  AuthPageState toSingUpPage() {
    return AuthPageState.signUp(isFailed: false, errorMessage: "");
  }
}
