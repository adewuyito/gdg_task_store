import 'package:gd_store/feature/products/domain/product_services.dart';
import 'package:gd_store/feature/products/model/product_item_model.dart';
import 'package:gd_store/shared/extentions/int_extentions.dart';

abstract class IProductRepository {
  Future<List<ProductItemModel>> getUriProducts();
}

class ProductRepository extends IProductRepository {
  ProductRepository({required ProductService productService})
      : _productService = productService;

  final ProductService _productService;

  List<ProductItemModel>? _cachedProducts;

  @override
  Future<List<ProductItemModel>> getUriProducts() async {
    if (_cachedProducts != null) {
      return _cachedProducts!;
    }

    try {
      final products = await _productService.fetchProducts();

      _cachedProducts = products;
      return products;
    } catch (e) {
      throw Exception('Failed to fetch products from repository');
    }
  }

  Future<List<ProductItemModel>> getProductFilter() async {
    try {
      final products = await _productService.fetchProducts();
      _cachedProducts = products;
      return products;
    } catch (e) {
      throw Exception('Failed to fetch products');
    }
  }

  Future<List<ProductItemModel>> loadPageinatedProducts({
    int page = 0,
    int productReciveCount = 10,
  }) async {
    try {
      final products = await _productService.fetchProducts(
        page: page.nearestTen,
      );
      _cachedProducts = products;
      return products;
    } catch (e) {
      throw Exception('Failed to fetch products');
    }
  }

  Future<ProductItemModel> getProductById({required int id}) async {
    try {
      final _product = _cachedProducts?.firstWhere((e) => e.id == id);

      return _product ?? await _productService.fetchProductsById(id: id);
    } catch (e) {
      throw Exception('Failed to fetch products');
    }
  }
}
