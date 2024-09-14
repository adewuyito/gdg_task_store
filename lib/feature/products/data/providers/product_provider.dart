import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gd_store/feature/products/data/providers/product_repository_provider.dart';
import 'package:gd_store/feature/products/model/product_item_model.dart';

final productsProvider = FutureProvider<List<ProductItemModel>>((ref) async {
  try {
    final repository = ref.watch(productRepositoryProvider);
    return await repository.getUriProducts();
  } catch (e, s) {
    debugPrint('Provider Error: Error fetching products: $e');
    debugPrint('Stack trace: $s');
    rethrow;
  }
});
