// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tweet _$TweetFromJson(Map<String, dynamic> json) {
  return _Tweet.fromJson(json);
}

/// @nodoc
class _$TweetTearOff {
  const _$TweetTearOff();

  _Tweet call(
      {required String id,
      required String userId,
      required String text,
      @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
          required DateTime createdAt}) {
    return _Tweet(
      id: id,
      userId: userId,
      text: text,
      createdAt: createdAt,
    );
  }

  Tweet fromJson(Map<String, Object> json) {
    return Tweet.fromJson(json);
  }
}

/// @nodoc
const $Tweet = _$TweetTearOff();

/// @nodoc
mixin _$Tweet {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetCopyWith<Tweet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCopyWith<$Res> {
  factory $TweetCopyWith(Tweet value, $Res Function(Tweet) then) =
      _$TweetCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String text,
      @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
          DateTime createdAt});
}

/// @nodoc
class _$TweetCopyWithImpl<$Res> implements $TweetCopyWith<$Res> {
  _$TweetCopyWithImpl(this._value, this._then);

  final Tweet _value;
  // ignore: unused_field
  final $Res Function(Tweet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TweetCopyWith<$Res> implements $TweetCopyWith<$Res> {
  factory _$TweetCopyWith(_Tweet value, $Res Function(_Tweet) then) =
      __$TweetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String text,
      @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
          DateTime createdAt});
}

/// @nodoc
class __$TweetCopyWithImpl<$Res> extends _$TweetCopyWithImpl<$Res>
    implements _$TweetCopyWith<$Res> {
  __$TweetCopyWithImpl(_Tweet _value, $Res Function(_Tweet) _then)
      : super(_value, (v) => _then(v as _Tweet));

  @override
  _Tweet get _value => super._value as _Tweet;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Tweet(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tweet extends _Tweet {
  const _$_Tweet(
      {required this.id,
      required this.userId,
      required this.text,
      @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
          required this.createdAt})
      : super._();

  factory _$_Tweet.fromJson(Map<String, dynamic> json) =>
      _$_$_TweetFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String text;
  @override
  @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
  final DateTime createdAt;

  @override
  String toString() {
    return 'Tweet(id: $id, userId: $userId, text: $text, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tweet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$TweetCopyWith<_Tweet> get copyWith =>
      __$TweetCopyWithImpl<_Tweet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TweetToJson(this);
  }
}

abstract class _Tweet extends Tweet {
  const factory _Tweet(
      {required String id,
      required String userId,
      required String text,
      @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
          required DateTime createdAt}) = _$_Tweet;
  const _Tweet._() : super._();

  factory _Tweet.fromJson(Map<String, dynamic> json) = _$_Tweet.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TweetCopyWith<_Tweet> get copyWith => throw _privateConstructorUsedError;
}
