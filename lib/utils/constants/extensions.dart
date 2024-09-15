import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

extension StringExtensions on String {
  String get capitalize {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get splitAndJoinEachUpperCase {
    return split(
      RegExp('(?=[A-Z])'),
    ).map((e) => e.capitalize).join(' ');
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E element, int index) f) {
    var index = 0;
    return map((e) => f(e, index++));
  }
}

extension ToTextWidget on String {
  Widget get toText => Text(this);
}


extension ToFile on Future<XFile?> {
  Future<File?> get toFile => then(
        (xFile) => xFile?.path,
      ).then(
        (filePath) => filePath != null ? File(filePath) : null,
      );
}
