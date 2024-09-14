// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImagePayLoadImpl _$$ProfileImagePayLoadImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileImagePayLoadImpl(
      id: json['id'] as String,
      imageAspectRatio: (json['imageAspectRatio'] as num).toDouble(),
      profileOriginal: json['profileOriginal'] as String,
      profileThumbnail: json['profileThumbnail'] as String,
      thumbnailStorageId: json['thumbnailStorageId'] as String,
      originalFileStorageId: json['originalFileStorageId'] as String,
    );

Map<String, dynamic> _$$ProfileImagePayLoadImplToJson(
        _$ProfileImagePayLoadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageAspectRatio': instance.imageAspectRatio,
      'profileOriginal': instance.profileOriginal,
      'profileThumbnail': instance.profileThumbnail,
      'thumbnailStorageId': instance.thumbnailStorageId,
      'originalFileStorageId': instance.originalFileStorageId,
    };
