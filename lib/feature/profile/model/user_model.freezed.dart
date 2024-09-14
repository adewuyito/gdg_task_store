// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _UserInfoModel.fromJson(json);
    case 'unknown':
      return _UserInfoModelUnkown.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserInfoModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserInfoModel {
  String get userId => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get displayImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String userId, String fullname, String? email, String? displayImage)
        $default, {
    required TResult Function(
            String userId, String fullname, String? email, String? displayImage)
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String fullname, String? email,
            String? displayImage)?
        $default, {
    TResult? Function(String userId, String fullname, String? email,
            String? displayImage)?
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String fullname, String? email,
            String? displayImage)?
        $default, {
    TResult Function(String userId, String fullname, String? email,
            String? displayImage)?
        unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserInfoModel value) $default, {
    required TResult Function(_UserInfoModelUnkown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserInfoModel value)? $default, {
    TResult? Function(_UserInfoModelUnkown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserInfoModel value)? $default, {
    TResult Function(_UserInfoModelUnkown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res, UserInfoModel>;
  @useResult
  $Res call(
      {String userId, String fullname, String? email, String? displayImage});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res, $Val extends UserInfoModel>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fullname = null,
    Object? email = freezed,
    Object? displayImage = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayImage: freezed == displayImage
          ? _value.displayImage
          : displayImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoModelImplCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$UserInfoModelImplCopyWith(
          _$UserInfoModelImpl value, $Res Function(_$UserInfoModelImpl) then) =
      __$$UserInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, String fullname, String? email, String? displayImage});
}

/// @nodoc
class __$$UserInfoModelImplCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$UserInfoModelImpl>
    implements _$$UserInfoModelImplCopyWith<$Res> {
  __$$UserInfoModelImplCopyWithImpl(
      _$UserInfoModelImpl _value, $Res Function(_$UserInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fullname = null,
    Object? email = freezed,
    Object? displayImage = freezed,
  }) {
    return _then(_$UserInfoModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayImage: freezed == displayImage
          ? _value.displayImage
          : displayImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoModelImpl implements _UserInfoModel {
  const _$UserInfoModelImpl(
      {required this.userId,
      required this.fullname,
      required this.email,
      required this.displayImage,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$UserInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String fullname;
  @override
  final String? email;
  @override
  final String? displayImage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserInfoModel(userId: $userId, fullname: $fullname, email: $email, displayImage: $displayImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayImage, displayImage) ||
                other.displayImage == displayImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, fullname, email, displayImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      __$$UserInfoModelImplCopyWithImpl<_$UserInfoModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String userId, String fullname, String? email, String? displayImage)
        $default, {
    required TResult Function(
            String userId, String fullname, String? email, String? displayImage)
        unknown,
  }) {
    return $default(userId, fullname, email, displayImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String fullname, String? email,
            String? displayImage)?
        $default, {
    TResult? Function(String userId, String fullname, String? email,
            String? displayImage)?
        unknown,
  }) {
    return $default?.call(userId, fullname, email, displayImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String fullname, String? email,
            String? displayImage)?
        $default, {
    TResult Function(String userId, String fullname, String? email,
            String? displayImage)?
        unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId, fullname, email, displayImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserInfoModel value) $default, {
    required TResult Function(_UserInfoModelUnkown value) unknown,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserInfoModel value)? $default, {
    TResult? Function(_UserInfoModelUnkown value)? unknown,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserInfoModel value)? $default, {
    TResult Function(_UserInfoModelUnkown value)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoModelImplToJson(
      this,
    );
  }
}

abstract class _UserInfoModel implements UserInfoModel {
  const factory _UserInfoModel(
      {required final String userId,
      required final String fullname,
      required final String? email,
      required final String? displayImage}) = _$UserInfoModelImpl;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$UserInfoModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get fullname;
  @override
  String? get email;
  @override
  String? get displayImage;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserInfoModelUnkownImplCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$UserInfoModelUnkownImplCopyWith(_$UserInfoModelUnkownImpl value,
          $Res Function(_$UserInfoModelUnkownImpl) then) =
      __$$UserInfoModelUnkownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, String fullname, String? email, String? displayImage});
}

/// @nodoc
class __$$UserInfoModelUnkownImplCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$UserInfoModelUnkownImpl>
    implements _$$UserInfoModelUnkownImplCopyWith<$Res> {
  __$$UserInfoModelUnkownImplCopyWithImpl(_$UserInfoModelUnkownImpl _value,
      $Res Function(_$UserInfoModelUnkownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fullname = null,
    Object? email = freezed,
    Object? displayImage = freezed,
  }) {
    return _then(_$UserInfoModelUnkownImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == displayImage
          ? _value.displayImage
          : displayImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoModelUnkownImpl implements _UserInfoModelUnkown {
  const _$UserInfoModelUnkownImpl(
      [this.userId = '',
      this.fullname = '',
      this.email = '',
      this.displayImage = '',
      final String? $type])
      : $type = $type ?? 'unknown';

  factory _$UserInfoModelUnkownImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoModelUnkownImplFromJson(json);

  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String fullname;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? displayImage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserInfoModel.unknown(userId: $userId, fullname: $fullname, email: $email, displayImage: $displayImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoModelUnkownImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayImage, displayImage) ||
                other.displayImage == displayImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, fullname, email, displayImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoModelUnkownImplCopyWith<_$UserInfoModelUnkownImpl> get copyWith =>
      __$$UserInfoModelUnkownImplCopyWithImpl<_$UserInfoModelUnkownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String userId, String fullname, String? email, String? displayImage)
        $default, {
    required TResult Function(
            String userId, String fullname, String? email, String? displayImage)
        unknown,
  }) {
    return unknown(userId, fullname, email, displayImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String userId, String fullname, String? email,
            String? displayImage)?
        $default, {
    TResult? Function(String userId, String fullname, String? email,
            String? displayImage)?
        unknown,
  }) {
    return unknown?.call(userId, fullname, email, displayImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, String fullname, String? email,
            String? displayImage)?
        $default, {
    TResult Function(String userId, String fullname, String? email,
            String? displayImage)?
        unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(userId, fullname, email, displayImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserInfoModel value) $default, {
    required TResult Function(_UserInfoModelUnkown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserInfoModel value)? $default, {
    TResult? Function(_UserInfoModelUnkown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserInfoModel value)? $default, {
    TResult Function(_UserInfoModelUnkown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoModelUnkownImplToJson(
      this,
    );
  }
}

abstract class _UserInfoModelUnkown implements UserInfoModel {
  const factory _UserInfoModelUnkown(
      [final String userId,
      final String fullname,
      final String? email,
      final String? displayImage]) = _$UserInfoModelUnkownImpl;

  factory _UserInfoModelUnkown.fromJson(Map<String, dynamic> json) =
      _$UserInfoModelUnkownImpl.fromJson;

  @override
  String get userId;
  @override
  String get fullname;
  @override
  String? get email;
  @override
  String? get displayImage;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoModelUnkownImplCopyWith<_$UserInfoModelUnkownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
