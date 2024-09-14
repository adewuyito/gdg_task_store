import 'package:gd_store/feature/auth/models/auth_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../notifier/auth_state_notifier.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(

  (ref) => AuthStateNotifier(ref),
);
