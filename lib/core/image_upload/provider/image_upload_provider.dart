import 'package:gd_store/core/image_upload/notifier/image_upload_notifier.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageUploadProvider = StateNotifierProvider<ImageUploadNotifier, IsLoading>((ref) => ImageUploadNotifier());