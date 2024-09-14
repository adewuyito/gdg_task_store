// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item_model.freezed.dart';
part 'product_item_model.g.dart';

@freezed
class ProductItemModel with _$ProductItemModel {
  const factory ProductItemModel({
    required int id,
    required String title,
    required String description,
    required dynamic brand,
    required double price,
    required double discountPercentage,
    required String thumbnail,
    required List<String> images,
  }) = _ProductItemModel;

  factory ProductItemModel.fromJson(Map<String, Object?> json)
      => _$ProductItemModelFromJson(json);
}

/* 
class ProductItemModel extends MapView<String, dynamic> {
  final int id;
  final String name;
  final String description;
  final String brand;
  final double basePrice;
  // final double discountPercentage;

  // final String thumbnail;
  // final List<String> images;

  ProductItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.brand,
    required this.basePrice,
    // required this.discountPercentage,
    // required this.thumbnail,
    // required this.images,
  }) : super({
          'id': id,
          'title': name,
          'description': description,
          'brand': brand,
          'price': basePrice,
          // 'discountPercentage': discountPercentage,
          // 'thumbnail': thumbnail,
          // 'images': images,
        });

  factory ProductItemModel.fromJson(Map<String, dynamic> json) {
    return ProductItemModel(
      id: json['id'] as int,
      name: json['title'] as String,
      description: json['description'] as String,
      brand: json['brand'] ?? '',
      basePrice: json['price'] as double,
      // discountPercentage: json['discountPercentage'] ?? 0.0,

      // thumbnail: json['thumbnail'] as String,
      // images: List<String>.from(
      //   (json['images'] as List<String>),
      // ),
    );
  }

  @override
  bool operator ==(covariant ProductItemModel other) {
    if (identical(this, other)) return true;

    return other.id == id; // && other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode; // ^ name.hashCode;
  }

  @override
  String toString() {
    return '''ProductItemModel(
    id: $id,
  
    )''';
  }
}
*/


final product = <String, dynamic>{
  "id": 1,
  "title": "Essence Mascara Lash Princess",
  "description":
      "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
  "category": "beauty",
  "price": 9.99,
  "discountPercentage": 7.17,
  "rating": 4.94,
  "stock": 5,
  "tags": ["beauty", "mascara"],
  "brand": "Essence",
  "sku": "RCH45Q1A",
  "weight": 2,
  "dimensions": {"width": 23.17, "height": 14.43, "depth": 28.01},
  "warrantyInformation": "1 month warranty",
  "shippingInformation": "Ships in 1 month",
  "availabilityStatus": "Low Stock",
  "reviews": [
    {
      "rating": 2,
      "comment": "Very unhappy with my purchase!",
      "date": "2024-05-23T08:56:21.618Z",
      "reviewerName": "John Doe",
      "reviewerEmail": "john.doe@x.dummyjson.com"
    },
    {
      "rating": 2,
      "comment": "Not as described!",
      "date": "2024-05-23T08:56:21.618Z",
      "reviewerName": "Nolan Gonzalez",
      "reviewerEmail": "nolan.gonzalez@x.dummyjson.com"
    },
    {
      "rating": 5,
      "comment": "Very satisfied!",
      "date": "2024-05-23T08:56:21.618Z",
      "reviewerName": "Scarlett Wright",
      "reviewerEmail": "scarlett.wright@x.dummyjson.com"
    }
  ],
  "returnPolicy": "30 days return policy",
  "minimumOrderQuantity": 24,
  "meta": {
    "createdAt": "2024-05-23T08:56:21.618Z",
    "updatedAt": "2024-05-23T08:56:21.618Z",
    "barcode": "9164035109868",
    "qrCode": "..."
  },
  "thumbnail": "...",
  "images": ["...", "...", "..."]
};
