// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppExceptionTearOff {
  const _$AppExceptionTearOff();

  SignInException signInException(String message) {
    return SignInException(
      message,
    );
  }

  SignUpException signUpException(String message) {
    return SignUpException(
      message,
    );
  }

  NotAuthException notAuthException(String message) {
    return NotAuthException(
      message,
    );
  }

  CreateAccountException createAccountException(String message) {
    return CreateAccountException(
      message,
    );
  }
}

/// @nodoc
const $AppException = _$AppExceptionTearOff();

/// @nodoc
mixin _$AppException {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInException,
    required TResult Function(String message) signUpException,
    required TResult Function(String message) notAuthException,
    required TResult Function(String message) createAccountException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInException,
    TResult Function(String message)? signUpException,
    TResult Function(String message)? notAuthException,
    TResult Function(String message)? createAccountException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInException value) signInException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(NotAuthException value) notAuthException,
    required TResult Function(CreateAccountException value)
        createAccountException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInException value)? signInException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(NotAuthException value)? notAuthException,
    TResult Function(CreateAccountException value)? createAccountException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res> implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  final AppException _value;
  // ignore: unused_field
  final $Res Function(AppException) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SignInExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $SignInExceptionCopyWith(
          SignInException value, $Res Function(SignInException) then) =
      _$SignInExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$SignInExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $SignInExceptionCopyWith<$Res> {
  _$SignInExceptionCopyWithImpl(
      SignInException _value, $Res Function(SignInException) _then)
      : super(_value, (v) => _then(v as SignInException));

  @override
  SignInException get _value => super._value as SignInException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SignInException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInException implements SignInException {
  const _$SignInException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.signInException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $SignInExceptionCopyWith<SignInException> get copyWith =>
      _$SignInExceptionCopyWithImpl<SignInException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInException,
    required TResult Function(String message) signUpException,
    required TResult Function(String message) notAuthException,
    required TResult Function(String message) createAccountException,
  }) {
    return signInException(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInException,
    TResult Function(String message)? signUpException,
    TResult Function(String message)? notAuthException,
    TResult Function(String message)? createAccountException,
    required TResult orElse(),
  }) {
    if (signInException != null) {
      return signInException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInException value) signInException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(NotAuthException value) notAuthException,
    required TResult Function(CreateAccountException value)
        createAccountException,
  }) {
    return signInException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInException value)? signInException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(NotAuthException value)? notAuthException,
    TResult Function(CreateAccountException value)? createAccountException,
    required TResult orElse(),
  }) {
    if (signInException != null) {
      return signInException(this);
    }
    return orElse();
  }
}

abstract class SignInException implements AppException {
  const factory SignInException(String message) = _$SignInException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SignInExceptionCopyWith<SignInException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $SignUpExceptionCopyWith(
          SignUpException value, $Res Function(SignUpException) then) =
      _$SignUpExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$SignUpExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $SignUpExceptionCopyWith<$Res> {
  _$SignUpExceptionCopyWithImpl(
      SignUpException _value, $Res Function(SignUpException) _then)
      : super(_value, (v) => _then(v as SignUpException));

  @override
  SignUpException get _value => super._value as SignUpException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SignUpException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpException implements SignUpException {
  const _$SignUpException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.signUpException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $SignUpExceptionCopyWith<SignUpException> get copyWith =>
      _$SignUpExceptionCopyWithImpl<SignUpException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInException,
    required TResult Function(String message) signUpException,
    required TResult Function(String message) notAuthException,
    required TResult Function(String message) createAccountException,
  }) {
    return signUpException(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInException,
    TResult Function(String message)? signUpException,
    TResult Function(String message)? notAuthException,
    TResult Function(String message)? createAccountException,
    required TResult orElse(),
  }) {
    if (signUpException != null) {
      return signUpException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInException value) signInException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(NotAuthException value) notAuthException,
    required TResult Function(CreateAccountException value)
        createAccountException,
  }) {
    return signUpException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInException value)? signInException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(NotAuthException value)? notAuthException,
    TResult Function(CreateAccountException value)? createAccountException,
    required TResult orElse(),
  }) {
    if (signUpException != null) {
      return signUpException(this);
    }
    return orElse();
  }
}

abstract class SignUpException implements AppException {
  const factory SignUpException(String message) = _$SignUpException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SignUpExceptionCopyWith<SignUpException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotAuthExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $NotAuthExceptionCopyWith(
          NotAuthException value, $Res Function(NotAuthException) then) =
      _$NotAuthExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$NotAuthExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $NotAuthExceptionCopyWith<$Res> {
  _$NotAuthExceptionCopyWithImpl(
      NotAuthException _value, $Res Function(NotAuthException) _then)
      : super(_value, (v) => _then(v as NotAuthException));

  @override
  NotAuthException get _value => super._value as NotAuthException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NotAuthException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotAuthException implements NotAuthException {
  const _$NotAuthException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.notAuthException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotAuthException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $NotAuthExceptionCopyWith<NotAuthException> get copyWith =>
      _$NotAuthExceptionCopyWithImpl<NotAuthException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInException,
    required TResult Function(String message) signUpException,
    required TResult Function(String message) notAuthException,
    required TResult Function(String message) createAccountException,
  }) {
    return notAuthException(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInException,
    TResult Function(String message)? signUpException,
    TResult Function(String message)? notAuthException,
    TResult Function(String message)? createAccountException,
    required TResult orElse(),
  }) {
    if (notAuthException != null) {
      return notAuthException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInException value) signInException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(NotAuthException value) notAuthException,
    required TResult Function(CreateAccountException value)
        createAccountException,
  }) {
    return notAuthException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInException value)? signInException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(NotAuthException value)? notAuthException,
    TResult Function(CreateAccountException value)? createAccountException,
    required TResult orElse(),
  }) {
    if (notAuthException != null) {
      return notAuthException(this);
    }
    return orElse();
  }
}

abstract class NotAuthException implements AppException {
  const factory NotAuthException(String message) = _$NotAuthException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NotAuthExceptionCopyWith<NotAuthException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $CreateAccountExceptionCopyWith(CreateAccountException value,
          $Res Function(CreateAccountException) then) =
      _$CreateAccountExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$CreateAccountExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $CreateAccountExceptionCopyWith<$Res> {
  _$CreateAccountExceptionCopyWithImpl(CreateAccountException _value,
      $Res Function(CreateAccountException) _then)
      : super(_value, (v) => _then(v as CreateAccountException));

  @override
  CreateAccountException get _value => super._value as CreateAccountException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(CreateAccountException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateAccountException implements CreateAccountException {
  const _$CreateAccountException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.createAccountException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAccountException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $CreateAccountExceptionCopyWith<CreateAccountException> get copyWith =>
      _$CreateAccountExceptionCopyWithImpl<CreateAccountException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) signInException,
    required TResult Function(String message) signUpException,
    required TResult Function(String message) notAuthException,
    required TResult Function(String message) createAccountException,
  }) {
    return createAccountException(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? signInException,
    TResult Function(String message)? signUpException,
    TResult Function(String message)? notAuthException,
    TResult Function(String message)? createAccountException,
    required TResult orElse(),
  }) {
    if (createAccountException != null) {
      return createAccountException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInException value) signInException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(NotAuthException value) notAuthException,
    required TResult Function(CreateAccountException value)
        createAccountException,
  }) {
    return createAccountException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInException value)? signInException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(NotAuthException value)? notAuthException,
    TResult Function(CreateAccountException value)? createAccountException,
    required TResult orElse(),
  }) {
    if (createAccountException != null) {
      return createAccountException(this);
    }
    return orElse();
  }
}

abstract class CreateAccountException implements AppException {
  const factory CreateAccountException(String message) =
      _$CreateAccountException;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CreateAccountExceptionCopyWith<CreateAccountException> get copyWith =>
      throw _privateConstructorUsedError;
}
