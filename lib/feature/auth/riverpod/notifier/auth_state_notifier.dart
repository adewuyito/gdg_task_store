import 'package:gd_store/feature/profile/riverpod/user_payload_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gd_store/feature/auth/domain/auth.dart';
import 'package:gd_store/feature/auth/models/auth_result.dart';
import 'package:gd_store/feature/auth/models/auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final Ref ref;
  final _authenticator = Authenticator();
  // final _userInfoStorage = const UserInfoStorage();

  // A constructor to get the state of AuthState on reading of riverPod
  // if the state gets a logged in query back the state would change to
  // an AuthState having its logged in state a successfull and the loading tag set to false.
  /// Constructor for [AuthStateNotifier]
  AuthStateNotifier(this.ref, {AuthState state = const AuthState.unknown()})
      : super(state) {
    if (_authenticator.isAlreadyLoggedIn) {
      state = AuthState(
        result: AuthResult.success,
        isLoading: false,
        userId: _authenticator.userId,
      );
    }
  }

  /// Provider created to use riverpod for logout
  Future<void> logOut() async {
    state = state.copiedWithIsLoading(true);
    await _authenticator.logOut();
    ref.read(userProvider.notifier).clearUser();
    state = const AuthState.unknown();
  }

  Future<void> loginWithCredentials({
    required String email,
    required String password,
  }) async {
    state = state.copiedWithIsLoading(true);

    final result = await _authenticator.loginWithCredential(
      email: email,
      password: password,
    );
    final userId = _authenticator.userId;

    switch (result) {
      case AuthResult.success:
        ref.read(userProvider.notifier).updateUser(
              id: userId!,
              name: _authenticator.displayName,
              email: _authenticator.email,
              displayImage: _authenticator.displayImage ??
                  _authenticator.profileDefaultImage,
            );
        break;

      case AuthResult.failure:
      case AuthResult.aborted:
        // TODO : Show snack bar
        break;
      default:
    }

    state = AuthState(
      result: result,
      isLoading: false,
      userId: userId,
    );

    // TODO : UPDATE USERMODEL
  }

  Future<void> signUpWithCredentials({
    required String name,
    required String email,
    required String password,
  }) async {
    state = state.copiedWithIsLoading(true);

    final result = await _authenticator.signUpWithCredential(
      email: email,
      password: password,
    );

    final userId = _authenticator.userId;
    switch (result) {
      case AuthResult.success:
        await _authenticator.user!.updateDisplayName(name);
        _authenticator.user!.reload();
        ref.read(userProvider.notifier).updateUser(
              id: userId!,
              name: _authenticator.displayName,
              email: _authenticator.email,
              displayImage: _authenticator.displayImage ??
                  _authenticator.profileDefaultImage,
            );
        break;
      case AuthResult.failure:
      case AuthResult.aborted:
        // TODO : Show snack bar
        break;
      default:
    }

    // ~
    // if (result == AuthResult.success && userId != null) {
    //   await _saveUserInfo(userId: userId);
    // }
    state = AuthState(
      result: result,
      isLoading: false,
      userId: userId,
    );
  }

  Future<void> updateUserName({required String name}) async {
    state = state.copiedWithIsLoading(true);

    final result = await _authenticator.updateUserName(newName: name);

    if (result == AuthResult.aborted || result == AuthResult.failure) {
      ref
          .read(userProvider.notifier)
          .updateUser(id: state.userId!, displayImage: name);
      // TODO : Show snack bar auth change not valid
    }

    state = state.copiedWithIsLoading(false);
  }

  // ~ UnUsed because all profile is gotten from firebase auth
  // Future<void> _saveUserInfo({
  //   required userId,
  // }) {
  //   return _userInfoStorage.saveUserInfo(
  //     userId: userId,
  //     fullname: _authenticator.displayName,
  //     email: _authenticator.email,
  //   );
  // }
}
