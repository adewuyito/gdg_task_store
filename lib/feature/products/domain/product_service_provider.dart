import 'package:gd_store/core/api/api.dart';
import 'package:gd_store/feature/products/domain/product_services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productServiceProvider = Provider<ProductService>((ref) {
  final dioService = ref.watch(dioHttpApiProvider);
  return ProductService(apiService: dioService);
});
