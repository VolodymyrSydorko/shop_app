import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile {
  final String token;
  final String userId;
  final DateTime expiryDate;

  UserProfile(
      {required this.token, required this.userId, required this.expiryDate});

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
