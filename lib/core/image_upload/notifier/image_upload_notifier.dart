import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gd_store/core/image_upload/exceptions/image_exceptions.dart';
import 'package:gd_store/core/image_upload/extentions/get_image_data_aspect_ratio.dart';
import 'package:gd_store/core/image_upload/models/file_types_enum.dart';
import 'package:gd_store/feature/profile/model/user_profile_image_model.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';
import 'package:image/image.dart' as img;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

// TODO : Adjust this file


class ImageUploadNotifier extends StateNotifier<IsLoading> {
  ImageUploadNotifier() : super(false);

  set isLoading(bool value) => state = value;

  Future<bool> upload({
    required File file,
    required UserId userId,
    FileType fileType = FileType.image,
  }) async {
    isLoading = true;
    late Uint8List thumbNailUint8List;

    final fileAsImage = img.decodeImage(file.readAsBytesSync());
    if (fileAsImage == null) {
      isLoading = false;
      throw const CouldNotBuildThumbnailException();
    }
    // Create the ThumbNail
    final thumbnail = img.copyResize(
      fileAsImage,
      width: 150,
    );
    final thumbnailData = img.encodeJpg(thumbnail);
    thumbNailUint8List = Uint8List.fromList(thumbnailData);

    // Calculate the aspect ratio
    final thumbnailAspectRatio = await thumbNailUint8List.getAspectRatio;

    // Calculate refrences
    final fileName = const Uuid().v4();

    // Create refrences to the thumbnail and image

    final thumbnailRef = FirebaseStorage.instance
        .ref()
        .child(userId)
        .child('thumnails')
        .child(fileName);

    final originalFileRef = FirebaseStorage.instance
        .ref()
        .child(userId)
        .child('images')
        .child(fileName);

    try {
      // Uplod thethumbnail
      final thumbnailUploadtask =
          await thumbnailRef.putData(thumbNailUint8List);
      final thumbnailStorageId = thumbnailUploadtask.ref.name;

      // Upload Original file
      final originalFileUplpadtask = originalFileRef.putFile(file);

      TaskSnapshot taskSnapshot = await originalFileUplpadtask.whenComplete(() {
        log("Firebase upload complite");
      });
      final originalFileStorageId = taskSnapshot.ref.name;

      // Upload post
      final profilePayload = ProfileImagePayLoad(
        id: userId,
        imageAspectRatio: thumbnailAspectRatio,
        profileOriginal: await originalFileRef.getDownloadURL() ,
        profileThumbnail: await thumbnailRef.getDownloadURL(),
        thumbnailStorageId: thumbnailStorageId,
        originalFileStorageId: originalFileStorageId,
      );



      await FirebaseFirestore.instance
          .collection('profile')
          .add(profilePayload.toJson());
      return true;
    } catch (_) {
      return false;
    } finally {
      isLoading = false;
    }
  }
}
