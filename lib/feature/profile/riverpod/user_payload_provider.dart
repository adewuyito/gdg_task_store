// Define a StateNotifierProvider for the UserNotifier
import 'package:gd_store/feature/profile/model/user_model.dart';
import 'package:gd_store/feature/profile/riverpod/user_payload_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userProvider = StateNotifierProvider<UserProfileNotifier, UserInfoModel>((ref) {
  return UserProfileNotifier();
});
