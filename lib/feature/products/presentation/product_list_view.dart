import 'dart:developer';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:gd_store/feature/products/data/providers/product_provider.dart';
import 'package:gd_store/feature/products/data/providers/product_repository_provider.dart';

import 'package:gd_store/routes/gd_router.gr.dart';
import 'package:gd_store/routes/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProductListView extends ConsumerWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsyncValue = ref.watch(productsProvider);
    final productRepository = ref.watch(productRepositoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              GDNavigator.of(context).push(const ProfileRoute());
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: productsAsyncValue.when(
        data: (products) {
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return GestureDetector(
                onTap: () async {
                  final _product = await productRepository.getProductById(
                    id: products[index].id,
                  );
                  if (context.mounted) {
                    GDNavigator.of(context).push(
                      ProductItemRoute(itemId: _product),
                    );
                  }
                },
                child: ListTile(
                  title: Text(product.title),
                  subtitle: Text('\$${product.price}'),
                ),
              );
            },
          );
        },
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
        error: (error, stackTrace) {
          log(productsAsyncValue.hasValue.toString());
          // log('Api Error', stackTrace: stackTrace);
          return Center(child: Text('$error'));
        },
      ),
    );
  }
}
