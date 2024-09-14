import 'package:flutter/foundation.dart' show immutable;


typedef CloseLoadingScreeen = bool Function();
typedef UpdateloadingScreen = bool Function(String text);


@immutable
class LoadingScreenController {
  final CloseLoadingScreeen closeLoadingScreen;
  final UpdateloadingScreen updateLoadingScreen;

  const LoadingScreenController({
    required this.closeLoadingScreen,
    required this.updateLoadingScreen,
  });
}