
import 'package:gd_store/feature/products/domain/product_service_provider.dart';
import 'package:gd_store/feature/products/data/product_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final productService = ref.watch(productServiceProvider);
  return ProductRepository(productService: productService);
});