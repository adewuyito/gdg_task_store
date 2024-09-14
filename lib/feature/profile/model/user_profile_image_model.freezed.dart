// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileImagePayLoad _$ProfileImagePayLoadFromJson(Map<String, dynamic> json) {
  return _ProfileImagePayLoad.fromJson(json);
}

/// @nodoc
mixin _$ProfileImagePayLoad {
  String get id => throw _privateConstructorUsedError;
  double get imageAspectRatio => throw _privateConstructorUsedError;
  String get profileOriginal => throw _privateConstructorUsedError;
  String get profileThumbnail => throw _privateConstructorUsedError;
  String get thumbnailStorageId => throw _privateConstructorUsedError;
  String get originalFileStorageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImagePayLoadCopyWith<ProfileImagePayLoad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImagePayLoadCopyWith<$Res> {
  factory $ProfileImagePayLoadCopyWith(
          ProfileImagePayLoad value, $Res Function(ProfileImagePayLoad) then) =
      _$ProfileImagePayLoadCopyWithImpl<$Res, ProfileImagePayLoad>;
  @useResult
  $Res call(
      {String id,
      double imageAspectRatio,
      String profileOriginal,
      String profileThumbnail,
      String thumbnailStorageId,
      String originalFileStorageId});
}

/// @nodoc
class _$ProfileImagePayLoadCopyWithImpl<$Res, $Val extends ProfileImagePayLoad>
    implements $ProfileImagePayLoadCopyWith<$Res> {
  _$ProfileImagePayLoadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageAspectRatio = null,
    Object? profileOriginal = null,
    Object? profileThumbnail = null,
    Object? thumbnailStorageId = null,
    Object? originalFileStorageId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageAspectRatio: null == imageAspectRatio
          ? _value.imageAspectRatio
          : imageAspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      profileOriginal: null == profileOriginal
          ? _value.profileOriginal
          : profileOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      profileThumbnail: null == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailStorageId: null == thumbnailStorageId
          ? _value.thumbnailStorageId
          : thumbnailStorageId // ignore: cast_nullable_to_non_nullable
              as String,
      originalFileStorageId: null == originalFileStorageId
          ? _value.originalFileStorageId
          : originalFileStorageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImagePayLoadImplCopyWith<$Res>
    implements $ProfileImagePayLoadCopyWith<$Res> {
  factory _$$ProfileImagePayLoadImplCopyWith(_$ProfileImagePayLoadImpl value,
          $Res Function(_$ProfileImagePayLoadImpl) then) =
      __$$ProfileImagePayLoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double imageAspectRatio,
      String profileOriginal,
      String profileThumbnail,
      String thumbnailStorageId,
      String originalFileStorageId});
}

/// @nodoc
class __$$ProfileImagePayLoadImplCopyWithImpl<$Res>
    extends _$ProfileImagePayLoadCopyWithImpl<$Res, _$ProfileImagePayLoadImpl>
    implements _$$ProfileImagePayLoadImplCopyWith<$Res> {
  __$$ProfileImagePayLoadImplCopyWithImpl(_$ProfileImagePayLoadImpl _value,
      $Res Function(_$ProfileImagePayLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageAspectRatio = null,
    Object? profileOriginal = null,
    Object? profileThumbnail = null,
    Object? thumbnailStorageId = null,
    Object? originalFileStorageId = null,
  }) {
    return _then(_$ProfileImagePayLoadImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageAspectRatio: null == imageAspectRatio
          ? _value.imageAspectRatio
          : imageAspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      profileOriginal: null == profileOriginal
          ? _value.profileOriginal
          : profileOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      profileThumbnail: null == profileThumbnail
          ? _value.profileThumbnail
          : profileThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailStorageId: null == thumbnailStorageId
          ? _value.thumbnailStorageId
          : thumbnailStorageId // ignore: cast_nullable_to_non_nullable
              as String,
      originalFileStorageId: null == originalFileStorageId
          ? _value.originalFileStorageId
          : originalFileStorageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImagePayLoadImpl implements _ProfileImagePayLoad {
  const _$ProfileImagePayLoadImpl(
      {required this.id,
      required this.imageAspectRatio,
      required this.profileOriginal,
      required this.profileThumbnail,
      required this.thumbnailStorageId,
      required this.originalFileStorageId});

  factory _$ProfileImagePayLoadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImagePayLoadImplFromJson(json);

  @override
  final String id;
  @override
  final double imageAspectRatio;
  @override
  final String profileOriginal;
  @override
  final String profileThumbnail;
  @override
  final String thumbnailStorageId;
  @override
  final String originalFileStorageId;

  @override
  String toString() {
    return 'ProfileImagePayLoad(id: $id, imageAspectRatio: $imageAspectRatio, profileOriginal: $profileOriginal, profileThumbnail: $profileThumbnail, thumbnailStorageId: $thumbnailStorageId, originalFileStorageId: $originalFileStorageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImagePayLoadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageAspectRatio, imageAspectRatio) ||
                other.imageAspectRatio == imageAspectRatio) &&
            (identical(other.profileOriginal, profileOriginal) ||
                other.profileOriginal == profileOriginal) &&
            (identical(other.profileThumbnail, profileThumbnail) ||
                other.profileThumbnail == profileThumbnail) &&
            (identical(other.thumbnailStorageId, thumbnailStorageId) ||
                other.thumbnailStorageId == thumbnailStorageId) &&
            (identical(other.originalFileStorageId, originalFileStorageId) ||
                other.originalFileStorageId == originalFileStorageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      imageAspectRatio,
      profileOriginal,
      profileThumbnail,
      thumbnailStorageId,
      originalFileStorageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImagePayLoadImplCopyWith<_$ProfileImagePayLoadImpl> get copyWith =>
      __$$ProfileImagePayLoadImplCopyWithImpl<_$ProfileImagePayLoadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImagePayLoadImplToJson(
      this,
    );
  }
}

abstract class _ProfileImagePayLoad implements ProfileImagePayLoad {
  const factory _ProfileImagePayLoad(
      {required final String id,
      required final double imageAspectRatio,
      required final String profileOriginal,
      required final String profileThumbnail,
      required final String thumbnailStorageId,
      required final String originalFileStorageId}) = _$ProfileImagePayLoadImpl;

  factory _ProfileImagePayLoad.fromJson(Map<String, dynamic> json) =
      _$ProfileImagePayLoadImpl.fromJson;

  @override
  String get id;
  @override
  double get imageAspectRatio;
  @override
  String get profileOriginal;
  @override
  String get profileThumbnail;
  @override
  String get thumbnailStorageId;
  @override
  String get originalFileStorageId;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImagePayLoadImplCopyWith<_$ProfileImagePayLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
