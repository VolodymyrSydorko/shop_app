// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      token: json['token'] as String,
      userId: json['userId'] as String,
      expiryDate: DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userId': instance.userId,
      'expiryDate': instance.expiryDate.toIso8601String(),
    };
