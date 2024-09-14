
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';

part 'user_profile_image_model.freezed.dart';
part 'user_profile_image_model.g.dart';

@freezed
class ProfileImagePayLoad with _$ProfileImagePayLoad {
 const factory ProfileImagePayLoad({
    required UserId id,
    required double imageAspectRatio,
    required String profileOriginal,
    required String profileThumbnail,
    required String thumbnailStorageId,
    required String originalFileStorageId,
  }) = _ProfileImagePayLoad;

          factory ProfileImagePayLoad.fromJson(Map<String, Object?> json)
      => _$ProfileImagePayLoadFromJson(json);
}