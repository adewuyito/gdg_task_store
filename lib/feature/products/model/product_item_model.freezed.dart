// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductItemModel _$ProductItemModelFromJson(Map<String, dynamic> json) {
  return _ProductItemModel.fromJson(json);
}

/// @nodoc
mixin _$ProductItemModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  dynamic get brand => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemModelCopyWith<ProductItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemModelCopyWith<$Res> {
  factory $ProductItemModelCopyWith(
          ProductItemModel value, $Res Function(ProductItemModel) then) =
      _$ProductItemModelCopyWithImpl<$Res, ProductItemModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      dynamic brand,
      double price,
      double discountPercentage,
      String thumbnail,
      List<String> images});
}

/// @nodoc
class _$ProductItemModelCopyWithImpl<$Res, $Val extends ProductItemModel>
    implements $ProductItemModelCopyWith<$Res> {
  _$ProductItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? brand = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductItemModelImplCopyWith<$Res>
    implements $ProductItemModelCopyWith<$Res> {
  factory _$$ProductItemModelImplCopyWith(_$ProductItemModelImpl value,
          $Res Function(_$ProductItemModelImpl) then) =
      __$$ProductItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      dynamic brand,
      double price,
      double discountPercentage,
      String thumbnail,
      List<String> images});
}

/// @nodoc
class __$$ProductItemModelImplCopyWithImpl<$Res>
    extends _$ProductItemModelCopyWithImpl<$Res, _$ProductItemModelImpl>
    implements _$$ProductItemModelImplCopyWith<$Res> {
  __$$ProductItemModelImplCopyWithImpl(_$ProductItemModelImpl _value,
      $Res Function(_$ProductItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? brand = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_$ProductItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductItemModelImpl implements _ProductItemModel {
  const _$ProductItemModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.brand,
      required this.price,
      required this.discountPercentage,
      required this.thumbnail,
      required final List<String> images})
      : _images = images;

  factory _$ProductItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductItemModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final dynamic brand;
  @override
  final double price;
  @override
  final double discountPercentage;
  @override
  final String thumbnail;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProductItemModel(id: $id, title: $title, description: $description, brand: $brand, price: $price, discountPercentage: $discountPercentage, thumbnail: $thumbnail, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      const DeepCollectionEquality().hash(brand),
      price,
      discountPercentage,
      thumbnail,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductItemModelImplCopyWith<_$ProductItemModelImpl> get copyWith =>
      __$$ProductItemModelImplCopyWithImpl<_$ProductItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductItemModelImplToJson(
      this,
    );
  }
}

abstract class _ProductItemModel implements ProductItemModel {
  const factory _ProductItemModel(
      {required final int id,
      required final String title,
      required final String description,
      required final dynamic brand,
      required final double price,
      required final double discountPercentage,
      required final String thumbnail,
      required final List<String> images}) = _$ProductItemModelImpl;

  factory _ProductItemModel.fromJson(Map<String, dynamic> json) =
      _$ProductItemModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  dynamic get brand;
  @override
  double get price;
  @override
  double get discountPercentage;
  @override
  String get thumbnail;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$ProductItemModelImplCopyWith<_$ProductItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
