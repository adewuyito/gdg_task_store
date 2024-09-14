import 'package:gd_store/feature/auth/riverpod/providers/auth_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoadingProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);

  // final isUploading = ref.watch(imageUploadProvider);
  // final isSendingComment = ref.watch(sendCommentProvider);
  // final isDeletingComment = ref.watch(deleteCommentProvider);
  // final isDeletingPost = ref.watch(deletePostProvider);

  return authState.isLoading;
  // isUploading ||
  // isSendingComment ||
  // isDeletingComment ||
  // isDeletingPost;
});
