// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$_$_AccountFromJson(Map<String, dynamic> json) {
  return _$_Account(
    id: json['id'] as String,
    name: json['name'] as String,
    profile: json['profile'] as String?,
    iconURL: json['iconURL'] as String?,
  );
}

Map<String, dynamic> _$_$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile': instance.profile,
      'iconURL': instance.iconURL,
    };
