// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tweet _$_$_TweetFromJson(Map<String, dynamic> json) {
  return _$_Tweet(
    id: json['id'] as String,
    userId: json['userId'] as String,
    text: json['text'] as String,
    createdAt: dateFromTimestampValue(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_TweetToJson(_$_Tweet instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'text': instance.text,
      'createdAt': timestampFromDateValue(instance.createdAt),
    };
