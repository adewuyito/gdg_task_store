// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gd_store/feature/auth/riverpod/providers/auth_state_provider.dart';
import 'package:gd_store/utils/helpers/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gd_store/shared/components/gd_button.dart';
import 'package:gd_store/shared/components/input_field.dart';

@RoutePage()
class SignUpView extends StatefulHookConsumerWidget {
  const SignUpView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupViewState();
}

class _SignupViewState extends ConsumerState<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nameController = useTextEditingController();
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();
    final _rePasswordController = useTextEditingController();

    bool validPassword = false;

    const gdspacer = SizedBox(height: 24);

    _signUp() {
      ref.read(authStateProvider.notifier).signUpWithCredentials(
            name: _nameController.text,
            email: _emailController.text,
            password: _passwordController.text,
          ); // TODO: Work on validator

      _emailController.clear();
      _nameController.clear();
      _rePasswordController.clear();
      _passwordController.clear();
    }

    return Scaffold(
      appBar: AppBar(
        // leading: const SizedBox.shrink(),
        title: const Text("SignUp"),
        centerTitle: false,
      ),
      body: Listener(
        onPointerDown: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputField(
                    controller: _nameController,
                    label: "Fullname",
                  ),
                  gdspacer,
                  InputField(
                    controller: _emailController,
                    label: "Email",
                  ),
                  gdspacer,
                  InputField(
                    isSecure: true,
                    controller: _passwordController,
                    label: "Password",
                  ),
                  gdspacer,
                  InputField(
                    isSecure: true,
                    controller: _rePasswordController,
                    label: "Confirm Password",
                  ),
                  const SizedBox(height: 30),
                  GDButtonWidget(
                    label: "Sign Up",
                    onPressed: () {
                      setState(() {
                        validPassword = InputValidatorUtils.validatePassword(
                              _passwordController.text,
                            ) &&
                            InputValidatorUtils.confirmPassword(
                              _passwordController.text,
                              _rePasswordController.text,
                            );
                      });
                      validPassword
                          ? _signUp()
                          : {
                              SnackbarUtils.of(context)
                                  .errorSnackBar("Error signing up")
                            };
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
