import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

@CopyWith()
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
