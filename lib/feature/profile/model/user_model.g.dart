// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoModelImpl _$$UserInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoModelImpl(
      userId: json['userId'] as String,
      fullname: json['fullname'] as String,
      email: json['email'] as String?,
      displayImage: json['displayImage'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserInfoModelImplToJson(_$UserInfoModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fullname': instance.fullname,
      'email': instance.email,
      'displayImage': instance.displayImage,
      'runtimeType': instance.$type,
    };

_$UserInfoModelUnkownImpl _$$UserInfoModelUnkownImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInfoModelUnkownImpl(
      json['userId'] as String? ?? '',
      json['fullname'] as String? ?? '',
      json['email'] as String? ?? '',
      json['displayImage'] as String? ?? '',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserInfoModelUnkownImplToJson(
        _$UserInfoModelUnkownImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fullname': instance.fullname,
      'email': instance.email,
      'displayImage': instance.displayImage,
      'runtimeType': instance.$type,
    };
