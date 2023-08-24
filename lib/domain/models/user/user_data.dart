// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  @JsonSerializable(includeIfNull: false)
  const factory UserData ({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'username') required String? username,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}