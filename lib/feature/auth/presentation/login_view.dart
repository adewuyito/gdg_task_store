// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gd_store/feature/auth/riverpod/providers/auth_state_provider.dart';
import 'package:gd_store/feature/auth/riverpod/providers/is_logged_provider.dart';
import 'package:gd_store/routes/gd_router.gr.dart';
import 'package:gd_store/routes/navigator.dart';
import 'package:gd_store/utils/helpers/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gd_store/shared/components/gd_button.dart';
import 'package:gd_store/shared/components/input_field.dart';
import 'package:gd_store/shared/components/rich_text/rich_text.dart';

@RoutePage()
class LoginView extends HookConsumerWidget {
  final void Function(bool?) onResult;

  const LoginView({super.key, required this.onResult});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();
    final _formKey = GlobalKey<FormState>();

    String? _login() {
      // final _val = _formKey.currentState?.validate();

      if (_emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        {
          ref.read(authStateProvider.notifier).loginWithCredentials(
                email: _emailController.text,
                password: _passwordController.text,
              );
          _emailController.clear();
          _passwordController.clear();
          onResult.call(ref.watch(isLoggedInProvider));
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Logging in...')),
        );
        return null;
      } else {
        SnackbarUtils.of(context)
            .errorSnackBar("Username or password incorrect");
        return "";
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Listener(
        onPointerDown: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          key: _formKey,
          minimum: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputField(
                    validator: InputValidatorUtils.validEmailAddress.call,
                    controller: _emailController,
                    label: "Email",
                  ),
                  const SizedBox(height: 24),
                  InputField(
                    isSecure: true,
                    controller: _passwordController,
                    label: "Password",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GDButtonWidget(
                    label: "Login",
                    onPressed: _login,
                  ),
                  const SizedBox(height: 20),
                  RichTwoPartText(
                    firstPart: "Dont have an account",
                    secondPart: "Sign Up",
                    linkTap: () {
                      GDNavigator.of(context).push(const SignUpRoute());
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
