// Notifier to manage the user state
import 'package:gd_store/feature/profile/model/user_model.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserProfileNotifier extends StateNotifier<UserInfoModel> {
  UserProfileNotifier() : super(const UserInfoModel.unknown());

  UserInfoModel get user => state;

  // Function to set the user (e.g., on login)
  void setUser(UserInfoModel user) {
    state = user;
  }

  // Function to update user information
  void updateUser({
    required UserId id,
    String? name,
    String? email,
    String? displayImage,
  }) {
    state = state.copyWith(
      userId: id,
      email: email ?? state.email,
      fullname: name ?? state.fullname,
      displayImage: displayImage ?? state.displayImage,
    );
  }

  // Function to clear the user state (e.g., on logout)
  void clearUser() {
    state = const UserInfoModel.unknown();
  }
}
