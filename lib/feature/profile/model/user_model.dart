import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    required UserId userId,
    required String fullname,
    required String? email,
    required String? displayImage
  }) = _UserInfoModel;

    const factory UserInfoModel.unknown([
    @Default('') UserId userId,
    @Default('') String fullname,
    @Default('') String? email,
    @Default('') String? displayImage,
  ]) = _UserInfoModelUnkown;

  factory UserInfoModel.fromJson(Map<String, Object?> json) =>
      _$UserInfoModelFromJson(json);

    
}
