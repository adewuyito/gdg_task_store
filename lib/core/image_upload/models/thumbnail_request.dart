import 'dart:io';
import 'package:flutter/foundation.dart';


@immutable
class ThumbNailRequest {
  final File file;

  const ThumbNailRequest({
    required this.file,
  });

  @override
  bool operator ==(Object other) =>
      (identical(this, other)) || other is ThumbNailRequest && runtimeType == other.runtimeType && file == other.file;

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        file,

      ]);
}
