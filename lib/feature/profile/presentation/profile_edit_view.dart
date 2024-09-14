// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';
import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gd_store/core/image_upload/extentions/to_file.dart';
import 'package:gd_store/core/image_upload/models/file_types_enum.dart';
import 'package:gd_store/core/image_upload/provider/image_upload_provider.dart';
import 'package:gd_store/core/image_upload/views/create_new_post_view.dart';
import 'package:gd_store/shared/components/gd_button.dart';
import 'package:gd_store/shared/components/input_field.dart';
import 'package:gd_store/utils/constants/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gd_store/feature/profile/presentation/widget/gd_profile_image.dart';
import 'package:image_picker/image_picker.dart';

// TODO : Create profile image ppovider

@RoutePage()
class ProfileEditView extends HookConsumerWidget {
  const ProfileEditView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _nameController = useTextEditingController();
    final _emailController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.navigate_before_rounded),
          onTap: () {},
        ), // TODO: cancel any change and go back
        title: const Text("Edit Profile"),
      ),
      body: SafeArea(
        minimum: safeAreaPadding,
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 26),
                  child: ProfileImage(
                    image: "assets/profile_image.jpg",
                    editImage: () async {
                      // Pick A Image
                      final imageFile =
                          await ImagePickerHelper.pickImageFromGallary();
                      if (imageFile == null) return;

                      // ref.invalidate(postSettingprovider);

                      if (!context.mounted) return;

                      debugPrint("Image: ${imageFile.path}");

                      String? userId = ref.watch(userIdProvider);
                      if (userId == null) return;

                      final isUploaded = await ref
                          .read(
                            imageUploadProvider.notifier,
                          )
                          .upload(
                            file: imageFile,
                            fileType: FileType.image,
                            userId: userId,
                          );

                      log('$isUploaded => is Uploaded');
                      log('${context.mounted} => is mounted');
                      if (isUploaded && context.mounted) {
                        debugPrint("Image Uploaded");
                      } else {
                        debugPrint("Image not Uploaded");
                      }
                      debugPrint("Debug print 6");
                    },
                  ),
                ), // TODO: Image change flow
                InputField(controller: _nameController, label: "Name"),
                const YBox(25),
                InputField(controller: _emailController, label: "email"),
              ],
            )),
            const GDButtonWidget(
              label: "Save",
            )
          ],
        ),
      ),
    );
  }
}

@immutable
class ImagePickerHelper {
  static final _imagePicker = ImagePicker();

  static Future<File?> pickImageFromGallary() =>
      _imagePicker.pickImage(source: ImageSource.gallery).toFile;
}
