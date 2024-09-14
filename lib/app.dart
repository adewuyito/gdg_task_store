import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/routes/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'utils/constants/constants.dart';

class GDApp extends ConsumerWidget {
  const GDApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isLoggedIn = ref.read(authStateProvider.notifier);
    // return logedIn ? const ProfileView() : const SignUpView();

    final router = ref.watch(gdRouteProvider);
    final media = MediaQuery.of(context);
    Dims.setSize(media);

    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [GDNavigatorObserver()],
      ),
      // routerConfig: router.config(
      //   reevaluateListenable: isLoggedIn,
      // ),
      routeInformationParser: router.defaultRouteParser(),
      routeInformationProvider: router.routeInfoProvider(),
      backButtonDispatcher: RootBackButtonDispatcher(),
      debugShowCheckedModeBanner: false,
      theme: appTheme,
    );
  }
}

/* 
            
MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Builder(
        builder: (context) {
          final media = MediaQuery.of(context);
          Dims.setSize(media);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1),
            ),
            child: Router(
              
              routerDelegate: AutoRouterDelegate(
                router,
                navigatorObservers: () => [GDNavigatorObserver()],
              ),
              routeInformationParser: router.defaultRouteParser(),
              routeInformationProvider: router.routeInfoProvider(),
              backButtonDispatcher: RootBackButtonDispatcher(),
            ),
          );
        },
      ),
    );

*/
