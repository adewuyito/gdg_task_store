import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/feature/products/model/product_item_model.dart';
import 'package:gd_store/gen/fonts.gen.dart';
import 'package:gd_store/routes/navigator.dart';
import 'package:gd_store/utils/constants/colors.dart';
import 'package:gd_store/utils/constants/dimensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProductItemView extends ConsumerWidget {
  const ProductItemView({
    super.key,
    required ProductItemModel itemId,
  }) : _product = itemId;
  final ProductItemModel _product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: appColors.greyF6F6F6,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.fromSize(
                size: Size.fromHeight(.7.dyPercent),
                child: CachedNetworkImage(
                  imageUrl: _product.images.first,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 20,
                ),
                width: 1.dxPercent,
                height: .3.dyPercent,
                color: appColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _product.brand,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: appColors.black.withAlpha(100),
                            fontFamily: FontFamily.athletics,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Text(
                      _product.title,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: appColors.black.withAlpha(200),
                            fontFamily: FontFamily.generalSans,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    YBox(5.dy),
                    Text(
                      '\$ ${_product.price}',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: appColors.black.withAlpha(180),
                            fontFamily: FontFamily.athletics,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    YBox(.01.dyPercent),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                          width: 1,
                          color: appColors.black.withAlpha(160),
                        )),
                      ),
                      child: Text(
                        'Description',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: appColors.black.withAlpha(160),
                            ),
                      ),
                    ),
                    Text(
                      _product.description,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: appColors.black.withAlpha(180),
                            letterSpacing: 1.1,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            child: const OverlayAppBar(),
          ),
        ],
      ),
    );
  }
}

class OverlayAppBar extends ConsumerWidget {
  const OverlayAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight),
      child: SizedBox.fromSize(
        size: const Size.fromHeight(kToolbarHeight),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                GDNavigator.of(context).pop();
              },
              icon: const Icon(Icons.navigate_before_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
