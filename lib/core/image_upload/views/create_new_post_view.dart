import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/core/image_upload/models/file_types_enum.dart';
import 'package:gd_store/core/image_upload/models/thumbnail_request.dart';
import 'package:gd_store/core/image_upload/provider/image_upload_provider.dart';
import 'package:gd_store/core/image_upload/provider/thumbnail_provider.dart';
import 'package:gd_store/feature/auth/riverpod/providers/auth_state_provider.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userIdProvider = Provider<UserId?>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.userId;
});

@RoutePage()
class CreateNewPostView extends StatefulHookConsumerWidget {
  final File file;

  const CreateNewPostView({
    super.key,
    required this.file,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateNewPostViewState();
}


class _CreateNewPostViewState extends ConsumerState<CreateNewPostView> {
  @override
  Widget build(BuildContext context) {
    // TODO: Understand this code
    final thumbNailRequest = ThumbNailRequest(file: widget.file);
    // final watchedPostSettings = ref.watch(postSettingprovider);

    return Scaffold(
      appBar: AppBar(
        title: "".toText,
        actions: [
          IconButton(
            // ~ Button to handle postiong
            onPressed: () async {
              final userId = ref.watch(userIdProvider);
              if (userId == null) return;
              final isUploaded = await ref
                  .read(
                    imageUploadProvider.notifier,
                  )
                  .upload(
                    file: widget.file,
                    fileType: FileType.image,
                    userId: userId,
                  );
              if (isUploaded && mounted) { // TODO : Fix mounting
                Navigator.of(context).pop();
              }
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Thumbnail
            FileThumbnailView(thumbNailRequest: thumbNailRequest)
          ],
        ),
      ),
    );
  }
}

// TODO: Fix to file
class FileThumbnailView extends ConsumerWidget {
  final ThumbNailRequest thumbNailRequest;
  const FileThumbnailView({required this.thumbNailRequest, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final thumbnail = ref.watch(thumbnailProvider(thumbNailRequest));
    return thumbnail.when(
      data: (imageWithAspectRatio) => AspectRatio(
        aspectRatio: imageWithAspectRatio.aspectRatio,
        child: imageWithAspectRatio.image,
      ),
      error: (_, __) => const Icon(Icons.error),
      loading: () => const CircularProgressIndicator.adaptive(),
    );
  }
}

extension ToTextWidget on String {
  Widget get toText => Text(this);
}
