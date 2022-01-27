// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      token: json['token'] as String,
      userId: json['userId'] as String,
      expiryDate: DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userId': instance.userId,
      'expiryDate': instance.expiryDate.toIso8601String(),
    };
