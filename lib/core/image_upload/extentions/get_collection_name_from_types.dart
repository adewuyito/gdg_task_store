import 'package:gd_store/core/image_upload/models/file_types_enum.dart';

extension CollectionName on FileType {
  String get collectionName {
    switch (this) {
      case FileType.image:
        return 'image';
    }
  }
}
