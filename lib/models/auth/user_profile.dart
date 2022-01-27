import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.g.dart';
part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String token,
    required String userId,
    required DateTime expiryDate,
  }) = _UserProfile;

  factory UserProfile.empty() =>
      UserProfile(token: '', userId: '', expiryDate: DateTime(0));

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
