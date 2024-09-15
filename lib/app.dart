import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/routes/router.dart';
import 'package:gd_store/shared/components/loading/loading_screen.dart';
import 'package:gd_store/shared/providers/is_loading_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'utils/constants/constants.dart';

class GDApp extends ConsumerWidget {
  const GDApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(gdRouteProvider);
    final media = MediaQuery.of(context);
    Dims.setSize(media);

    ref.listen(
      isLoadingProvider,
      (_, isLoading) {
        isLoading
            ? LoadingScreen.instance().show(context: context)
            : LoadingScreen.instance().hide();
      },
    );

    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [GDNavigatorObserver()],
      ),
      routeInformationParser: router.defaultRouteParser(),
      routeInformationProvider: router.routeInfoProvider(
  
      ),
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
