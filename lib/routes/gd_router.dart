import 'route_guard.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'gd_router.gr.dart';

final gdRouteProvider = Provider<GDRouter>((ref) {
  return GDRouter(authGuard: ref.watch(authGuardProvider));
});

class TransitionsBuilder {
  static Widget fadeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    /// you get an animation object and a widget
    /// make your own transition
    return FadeTransition(opacity: animation, child: child);
  }
}

@AutoRouterConfig(replaceInRouteName: 'Page|View|Screen,Route')
class GDRouter extends RootStackRouter {
  GDRouter({
    required this.authGuard,
  });
  AuthGuard authGuard;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        routeWithFadeTransition(page: LoginRoute.page),
        routeWithFadeTransition(page: SignUpRoute.page),

        routeWithFadeTransition(page: ProductListRoute.page, initial: true, routeGuards: [authGuard]),
        routeWithFadeTransition(page: ProductItemRoute.page, routeGuards: [authGuard]),

        // make nested
        routeWithFadeTransition(page: ProfileRoute.page, routeGuards: [authGuard]),
        routeWithFadeTransition(page: ProfileEditRoute.page, routeGuards: [authGuard])
      ];
  CustomRoute routeWithFadeTransition({
    required PageInfo page,
    bool initial = false,
    String? path,
    List<AutoRouteGuard> routeGuards = const [],
    Widget Function(
      BuildContext,
      Animation<double>,
      Animation<double>,
      Widget,
    )? transitionsBuilder = TransitionsBuilders.fadeIn,
    List<AutoRoute>? children,
  }) {
    return CustomRoute(
      path: path,
      page: page,
      initial: initial,
      transitionsBuilder: transitionsBuilder,
      durationInMilliseconds: 400,
      children: children,
      guards: routeGuards
    );
  }
}
