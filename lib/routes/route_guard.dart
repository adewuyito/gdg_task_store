import 'package:auto_route/auto_route.dart';
import 'package:gd_store/feature/auth/riverpod/providers/is_logged_provider.dart';
import 'package:gd_store/routes/gd_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authGuardProvider = Provider<AuthGuard>((ref) {
  final logedIn = ref.watch(isLoggedInProvider);

  return AuthGuard(logedIn);
});

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.isLoggedIn);

  final bool isLoggedIn;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isLoggedIn ||
        resolver.routeName == LoginRoute.name ||
        resolver.routeName == SignUpRoute.name) {
      resolver.next();
    } else {
      resolver.redirect(LoginRoute(
        onResult: (log) {
          resolver.next(log ?? false);
        },
      ));
    }
  }
}

/* 

[
    AutoRouteGuard.simple((resolver, router) {
        if(isAuthenticated || resolver.routeName == LoginRoute.name) {
          // we continue navigation
          resolver.next();
        } else {
          // else we navigate to the Login page so we get authenticated

          // tip: use resolver.redirect to have the redirected route
          // automatically removed from the stack when the resolver is completed
          resolver.redirect(LoginRoute(onResult: (didLogin) => resolver.next(didLogin)));
        }
      },
    ),
    // add more guards here
  ];


 */