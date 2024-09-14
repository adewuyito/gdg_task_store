import 'dart:io';

import 'package:image_picker/image_picker.dart';


// Convetion of an optional XFile to a File
extension ToFile on Future<XFile?> {
  Future<File?> get toFile => then(
        (xFile) => xFile?.path,
      ).then(
        (filePath) => filePath != null ? File(filePath) : null,
      );
}
