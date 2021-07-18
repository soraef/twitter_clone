// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timeline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimeLineItemStateTearOff {
  const _$TimeLineItemStateTearOff();

  _TimeLineItemState call({required Tweet tweet, required User user}) {
    return _TimeLineItemState(
      tweet: tweet,
      user: user,
    );
  }
}

/// @nodoc
const $TimeLineItemState = _$TimeLineItemStateTearOff();

/// @nodoc
mixin _$TimeLineItemState {
  Tweet get tweet => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeLineItemStateCopyWith<TimeLineItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeLineItemStateCopyWith<$Res> {
  factory $TimeLineItemStateCopyWith(
          TimeLineItemState value, $Res Function(TimeLineItemState) then) =
      _$TimeLineItemStateCopyWithImpl<$Res>;
  $Res call({Tweet tweet, User user});

  $TweetCopyWith<$Res> get tweet;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TimeLineItemStateCopyWithImpl<$Res>
    implements $TimeLineItemStateCopyWith<$Res> {
  _$TimeLineItemStateCopyWithImpl(this._value, this._then);

  final TimeLineItemState _value;
  // ignore: unused_field
  final $Res Function(TimeLineItemState) _then;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $TweetCopyWith<$Res> get tweet {
    return $TweetCopyWith<$Res>(_value.tweet, (value) {
      return _then(_value.copyWith(tweet: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$TimeLineItemStateCopyWith<$Res>
    implements $TimeLineItemStateCopyWith<$Res> {
  factory _$TimeLineItemStateCopyWith(
          _TimeLineItemState value, $Res Function(_TimeLineItemState) then) =
      __$TimeLineItemStateCopyWithImpl<$Res>;
  @override
  $Res call({Tweet tweet, User user});

  @override
  $TweetCopyWith<$Res> get tweet;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$TimeLineItemStateCopyWithImpl<$Res>
    extends _$TimeLineItemStateCopyWithImpl<$Res>
    implements _$TimeLineItemStateCopyWith<$Res> {
  __$TimeLineItemStateCopyWithImpl(
      _TimeLineItemState _value, $Res Function(_TimeLineItemState) _then)
      : super(_value, (v) => _then(v as _TimeLineItemState));

  @override
  _TimeLineItemState get _value => super._value as _TimeLineItemState;

  @override
  $Res call({
    Object? tweet = freezed,
    Object? user = freezed,
  }) {
    return _then(_TimeLineItemState(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_TimeLineItemState extends _TimeLineItemState {
  const _$_TimeLineItemState({required this.tweet, required this.user})
      : super._();

  @override
  final Tweet tweet;
  @override
  final User user;

  @override
  String toString() {
    return 'TimeLineItemState(tweet: $tweet, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeLineItemState &&
            (identical(other.tweet, tweet) ||
                const DeepCollectionEquality().equals(other.tweet, tweet)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tweet) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$TimeLineItemStateCopyWith<_TimeLineItemState> get copyWith =>
      __$TimeLineItemStateCopyWithImpl<_TimeLineItemState>(this, _$identity);
}

abstract class _TimeLineItemState extends TimeLineItemState {
  const factory _TimeLineItemState({required Tweet tweet, required User user}) =
      _$_TimeLineItemState;
  const _TimeLineItemState._() : super._();

  @override
  Tweet get tweet => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimeLineItemStateCopyWith<_TimeLineItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
