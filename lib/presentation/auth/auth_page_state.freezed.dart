// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthPageStateTearOff {
  const _$AuthPageStateTearOff();

  SignInPage signIn({required bool isFailed, required String errorMessage}) {
    return SignInPage(
      isFailed: isFailed,
      errorMessage: errorMessage,
    );
  }

  SingUpPage signUp({required bool isFailed, required String errorMessage}) {
    return SingUpPage(
      isFailed: isFailed,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $AuthPageState = _$AuthPageStateTearOff();

/// @nodoc
mixin _$AuthPageState {
  bool get isFailed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFailed, String errorMessage) signIn,
    required TResult Function(bool isFailed, String errorMessage) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFailed, String errorMessage)? signIn,
    TResult Function(bool isFailed, String errorMessage)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInPage value) signIn,
    required TResult Function(SingUpPage value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInPage value)? signIn,
    TResult Function(SingUpPage value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageStateCopyWith<AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res>;
  $Res call({bool isFailed, String errorMessage});
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  final AuthPageState _value;
  // ignore: unused_field
  final $Res Function(AuthPageState) _then;

  @override
  $Res call({
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SignInPageCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory $SignInPageCopyWith(
          SignInPage value, $Res Function(SignInPage) then) =
      _$SignInPageCopyWithImpl<$Res>;
  @override
  $Res call({bool isFailed, String errorMessage});
}

/// @nodoc
class _$SignInPageCopyWithImpl<$Res> extends _$AuthPageStateCopyWithImpl<$Res>
    implements $SignInPageCopyWith<$Res> {
  _$SignInPageCopyWithImpl(SignInPage _value, $Res Function(SignInPage) _then)
      : super(_value, (v) => _then(v as SignInPage));

  @override
  SignInPage get _value => super._value as SignInPage;

  @override
  $Res call({
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(SignInPage(
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInPage extends SignInPage {
  const _$SignInPage({required this.isFailed, required this.errorMessage})
      : super._();

  @override
  final bool isFailed;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthPageState.signIn(isFailed: $isFailed, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInPage &&
            (identical(other.isFailed, isFailed) ||
                const DeepCollectionEquality()
                    .equals(other.isFailed, isFailed)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFailed) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $SignInPageCopyWith<SignInPage> get copyWith =>
      _$SignInPageCopyWithImpl<SignInPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFailed, String errorMessage) signIn,
    required TResult Function(bool isFailed, String errorMessage) signUp,
  }) {
    return signIn(isFailed, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFailed, String errorMessage)? signIn,
    TResult Function(bool isFailed, String errorMessage)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(isFailed, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInPage value) signIn,
    required TResult Function(SingUpPage value) signUp,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInPage value)? signIn,
    TResult Function(SingUpPage value)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInPage extends AuthPageState {
  const factory SignInPage(
      {required bool isFailed, required String errorMessage}) = _$SignInPage;
  const SignInPage._() : super._();

  @override
  bool get isFailed => throw _privateConstructorUsedError;
  @override
  String get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SignInPageCopyWith<SignInPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingUpPageCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory $SingUpPageCopyWith(
          SingUpPage value, $Res Function(SingUpPage) then) =
      _$SingUpPageCopyWithImpl<$Res>;
  @override
  $Res call({bool isFailed, String errorMessage});
}

/// @nodoc
class _$SingUpPageCopyWithImpl<$Res> extends _$AuthPageStateCopyWithImpl<$Res>
    implements $SingUpPageCopyWith<$Res> {
  _$SingUpPageCopyWithImpl(SingUpPage _value, $Res Function(SingUpPage) _then)
      : super(_value, (v) => _then(v as SingUpPage));

  @override
  SingUpPage get _value => super._value as SingUpPage;

  @override
  $Res call({
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(SingUpPage(
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingUpPage extends SingUpPage {
  const _$SingUpPage({required this.isFailed, required this.errorMessage})
      : super._();

  @override
  final bool isFailed;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthPageState.signUp(isFailed: $isFailed, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SingUpPage &&
            (identical(other.isFailed, isFailed) ||
                const DeepCollectionEquality()
                    .equals(other.isFailed, isFailed)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFailed) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $SingUpPageCopyWith<SingUpPage> get copyWith =>
      _$SingUpPageCopyWithImpl<SingUpPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFailed, String errorMessage) signIn,
    required TResult Function(bool isFailed, String errorMessage) signUp,
  }) {
    return signUp(isFailed, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFailed, String errorMessage)? signIn,
    TResult Function(bool isFailed, String errorMessage)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(isFailed, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInPage value) signIn,
    required TResult Function(SingUpPage value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInPage value)? signIn,
    TResult Function(SingUpPage value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SingUpPage extends AuthPageState {
  const factory SingUpPage(
      {required bool isFailed, required String errorMessage}) = _$SingUpPage;
  const SingUpPage._() : super._();

  @override
  bool get isFailed => throw _privateConstructorUsedError;
  @override
  String get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SingUpPageCopyWith<SingUpPage> get copyWith =>
      throw _privateConstructorUsedError;
}
