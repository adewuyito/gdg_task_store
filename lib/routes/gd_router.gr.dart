// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i10;

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:gd_store/core/image_upload/views/create_new_post_view.dart'
    as _i1;
import 'package:gd_store/feature/auth/presentation/login_view.dart' as _i2;
import 'package:gd_store/feature/auth/presentation/signup_view.dart' as _i7;
import 'package:gd_store/feature/products/model/product_item_model.dart'
    as _i11;
import 'package:gd_store/feature/products/presentation/product_item_view.dart'
    as _i3;
import 'package:gd_store/feature/products/presentation/product_list_view.dart'
    as _i4;
import 'package:gd_store/feature/profile/presentation/profile_edit_view.dart'
    as _i5;
import 'package:gd_store/feature/profile/presentation/profile_view.dart' as _i6;

/// generated route for
/// [_i1.CreateNewPostView]
class CreateNewPostRoute extends _i8.PageRouteInfo<CreateNewPostRouteArgs> {
  CreateNewPostRoute({
    _i9.Key? key,
    required _i10.File file,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CreateNewPostRoute.name,
          args: CreateNewPostRouteArgs(
            key: key,
            file: file,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateNewPostRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateNewPostRouteArgs>();
      return _i1.CreateNewPostView(
        key: args.key,
        file: args.file,
      );
    },
  );
}

class CreateNewPostRouteArgs {
  const CreateNewPostRouteArgs({
    this.key,
    required this.file,
  });

  final _i9.Key? key;

  final _i10.File file;

  @override
  String toString() {
    return 'CreateNewPostRouteArgs{key: $key, file: $file}';
  }
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i8.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i9.Key? key,
    required void Function(bool?) onResult,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i2.LoginView(
        key: args.key,
        onResult: args.onResult,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i9.Key? key;

  final void Function(bool?) onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i3.ProductItemView]
class ProductItemRoute extends _i8.PageRouteInfo<ProductItemRouteArgs> {
  ProductItemRoute({
    _i9.Key? key,
    required _i11.ProductItemModel itemId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ProductItemRoute.name,
          args: ProductItemRouteArgs(
            key: key,
            itemId: itemId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductItemRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductItemRouteArgs>();
      return _i3.ProductItemView(
        key: args.key,
        itemId: args.itemId,
      );
    },
  );
}

class ProductItemRouteArgs {
  const ProductItemRouteArgs({
    this.key,
    required this.itemId,
  });

  final _i9.Key? key;

  final _i11.ProductItemModel itemId;

  @override
  String toString() {
    return 'ProductItemRouteArgs{key: $key, itemId: $itemId}';
  }
}

/// generated route for
/// [_i4.ProductListView]
class ProductListRoute extends _i8.PageRouteInfo<void> {
  const ProductListRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProductListView();
    },
  );
}

/// generated route for
/// [_i5.ProfileEditView]
class ProfileEditRoute extends _i8.PageRouteInfo<void> {
  const ProfileEditRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileEditRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileEditRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileEditView();
    },
  );
}

/// generated route for
/// [_i6.ProfileView]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileView();
    },
  );
}

/// generated route for
/// [_i7.SignUpView]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SignUpView();
    },
  );
}
