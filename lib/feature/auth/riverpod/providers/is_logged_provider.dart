import 'package:gd_store/feature/auth/models/auth_result.dart';
import 'package:gd_store/feature/auth/riverpod/providers/auth_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoggedInProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.result == AuthResult.success;
});
