import 'dart:async' show Completer;

import 'package:flutter/material.dart' as material show Image, ImageConfiguration, ImageStreamListener;

extension GetImageAspectRatio on material.Image {
  Future<double> get getAspectRatio async {
    final completer = Completer<double>();
    image.resolve(const material.ImageConfiguration()).addListener(
          material.ImageStreamListener(
            (info, _) {
              final aspectRatio = info.image.width / info.image.height;
              info.image.dispose();
              completer.complete(aspectRatio);
            },
          ),
        );
        return completer.future;
  }
}
