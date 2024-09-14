import 'package:flutter/material.dart';
import 'package:gd_store/core/image_upload/extentions/get_image_aspect_ratio.dart';
import 'package:gd_store/core/image_upload/models/image_with_aspect_ratio.dart';
import 'package:gd_store/core/image_upload/models/thumbnail_request.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final thumbnailProvider =
    FutureProvider.family.autoDispose<ImageWithAspectRatio, ThumbNailRequest>(
  (
    ref,
    request,
  ) async {
    final Image image;

    image = Image.file(
      request.file,
      fit: BoxFit.fitHeight,
    );

    final aspectRatio = await image.getAspectRatio;
    return ImageWithAspectRatio(image: image, aspectRatio: aspectRatio);
  },
);
