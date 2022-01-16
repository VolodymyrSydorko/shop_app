// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserProfileCWProxy {
  UserProfile expiryDate(DateTime expiryDate);

  UserProfile token(String token);

  UserProfile userId(String userId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  UserProfile call({
    DateTime? expiryDate,
    String? token,
    String? userId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserProfile.copyWith.fieldName(...)`
class _$UserProfileCWProxyImpl implements _$UserProfileCWProxy {
  final UserProfile _value;

  const _$UserProfileCWProxyImpl(this._value);

  @override
  UserProfile expiryDate(DateTime expiryDate) => this(expiryDate: expiryDate);

  @override
  UserProfile token(String token) => this(token: token);

  @override
  UserProfile userId(String userId) => this(userId: userId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  UserProfile call({
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
  }) {
    return UserProfile(
      expiryDate: expiryDate == const $CopyWithPlaceholder()
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime,
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
    );
  }
}

extension $UserProfileCopyWith on UserProfile {
  /// Returns a callable class that can be used as follows: `instanceOfclass UserProfile.name.copyWith(...)` or like so:`instanceOfclass UserProfile.name.copyWith.fieldName(...)`.
  _$UserProfileCWProxy get copyWith => _$UserProfileCWProxyImpl(this);
}

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
