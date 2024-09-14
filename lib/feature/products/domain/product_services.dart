import 'package:gd_store/core/api/api.dart';
import 'package:gd_store/feature/products/model/product_item_model.dart';

class ProductService {
  const ProductService({required IHttpApi apiService})
      : _productApiService = apiService;
  final IHttpApi _productApiService;

  Future<List<ProductItemModel>> fetchProducts({
    int page = 0,
    int productReciveCount = 10, // gets 10 products
  }) async {
    try {
      final response = await _productApiService.get(
        productEndpoint.getProducts,
        queryParameters: {
          'limits': productReciveCount,
          'skip': page,
        },
      );

      List<dynamic> data = response.data['products'];
      final productList = data
          .map(
            (json) => ProductItemModel.fromJson(json),
          )
          .toList();

      return productList;
    } catch (e) {
      throw Exception('Failed to load products from service');
    }
  }

  Future<ProductItemModel> fetchProductsById({required int id}) async {
    try {
      final response = await _productApiService.get(
        '${productEndpoint.getProducts}/$id',
      );
     
      return ProductItemModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load product with Id: $id from service');
    }
  }
}
