// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductItemModelImpl _$$ProductItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductItemModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      brand: json['brand'],
      price: (json['price'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      thumbnail: json['thumbnail'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductItemModelImplToJson(
        _$ProductItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'brand': instance.brand,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
    };
