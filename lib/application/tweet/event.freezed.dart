// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TweetEventTearOff {
  const _$TweetEventTearOff();

  TweetAdded added(Tweet tweet) {
    return TweetAdded(
      tweet,
    );
  }
}

/// @nodoc
const $TweetEvent = _$TweetEventTearOff();

/// @nodoc
mixin _$TweetEvent {
  Tweet get tweet => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tweet tweet) added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tweet tweet)? added,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TweetAdded value) added,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TweetAdded value)? added,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetEventCopyWith<TweetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEventCopyWith<$Res> {
  factory $TweetEventCopyWith(
          TweetEvent value, $Res Function(TweetEvent) then) =
      _$TweetEventCopyWithImpl<$Res>;
  $Res call({Tweet tweet});

  $TweetCopyWith<$Res> get tweet;
}

/// @nodoc
class _$TweetEventCopyWithImpl<$Res> implements $TweetEventCopyWith<$Res> {
  _$TweetEventCopyWithImpl(this._value, this._then);

  final TweetEvent _value;
  // ignore: unused_field
  final $Res Function(TweetEvent) _then;

  @override
  $Res call({
    Object? tweet = freezed,
  }) {
    return _then(_value.copyWith(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
    ));
  }

  @override
  $TweetCopyWith<$Res> get tweet {
    return $TweetCopyWith<$Res>(_value.tweet, (value) {
      return _then(_value.copyWith(tweet: value));
    });
  }
}

/// @nodoc
abstract class $TweetAddedCopyWith<$Res> implements $TweetEventCopyWith<$Res> {
  factory $TweetAddedCopyWith(
          TweetAdded value, $Res Function(TweetAdded) then) =
      _$TweetAddedCopyWithImpl<$Res>;
  @override
  $Res call({Tweet tweet});

  @override
  $TweetCopyWith<$Res> get tweet;
}

/// @nodoc
class _$TweetAddedCopyWithImpl<$Res> extends _$TweetEventCopyWithImpl<$Res>
    implements $TweetAddedCopyWith<$Res> {
  _$TweetAddedCopyWithImpl(TweetAdded _value, $Res Function(TweetAdded) _then)
      : super(_value, (v) => _then(v as TweetAdded));

  @override
  TweetAdded get _value => super._value as TweetAdded;

  @override
  $Res call({
    Object? tweet = freezed,
  }) {
    return _then(TweetAdded(
      tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
    ));
  }
}

/// @nodoc

class _$TweetAdded implements TweetAdded {
  const _$TweetAdded(this.tweet);

  @override
  final Tweet tweet;

  @override
  String toString() {
    return 'TweetEvent.added(tweet: $tweet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TweetAdded &&
            (identical(other.tweet, tweet) ||
                const DeepCollectionEquality().equals(other.tweet, tweet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tweet);

  @JsonKey(ignore: true)
  @override
  $TweetAddedCopyWith<TweetAdded> get copyWith =>
      _$TweetAddedCopyWithImpl<TweetAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Tweet tweet) added,
  }) {
    return added(tweet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Tweet tweet)? added,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(tweet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TweetAdded value) added,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TweetAdded value)? added,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class TweetAdded implements TweetEvent {
  const factory TweetAdded(Tweet tweet) = _$TweetAdded;

  @override
  Tweet get tweet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TweetAddedCopyWith<TweetAdded> get copyWith =>
      throw _privateConstructorUsedError;
}
