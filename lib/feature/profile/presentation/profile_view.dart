import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/feature/auth/domain/auth.dart';
import 'package:gd_store/feature/profile/riverpod/user_payload_provider.dart';
import 'package:gd_store/routes/gd_router.gr.dart';
import 'package:gd_store/routes/router.dart';
import 'package:gd_store/shared/components/dialog/model/alert_dialog.dart';
import 'package:gd_store/shared/components/dialog/view/log_out_dialog.dart';
import 'package:gd_store/feature/auth/riverpod/providers/auth_state_provider.dart';
import 'package:gd_store/gen/fonts.gen.dart';
import 'package:gd_store/shared/enums.dart';
import 'package:gd_store/shared/components/gd_button.dart';
import 'package:gd_store/utils/constants/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widget/gd_profile_image.dart';

@RoutePage()
class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _profile = ref.watch(userProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final user = Authenticator().user;
          if (user != null) {
            log(user.displayName ?? "No display naem");
          } else {
            log('User is null');
          }
          // log(_profile.toString());
        },
      ),
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          SizedBox(
            height: 30,
            child: TextButton(
              onPressed: () {
                GDNavigator.of(context).push(const ProfileEditRoute());
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                overlayColor: appColors.transparent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: appColors.grey767676.withOpacity(.2),
                    width: .5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Edit",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: appColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        minimum: safeAreaPadding,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ProfileImage(image: _profile.displayImage!),
                  ),
                  SizedBox(height: 16),
                  Text(
                    _profile.fullname,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: FontFamily.athletics,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 0),
                  Text(
                    _profile.email ?? '',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: FontFamily.athletics,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            GDButtonWidget(
              buttonRole: ButtonRole.destructive,
              label: "Log out",
              onPressed: () async {
                final shouldLogOut = await LogOutDialog()
                    .present(context)
                    .then((value) => value ?? false);
                if (shouldLogOut) {
                  ref.read(authStateProvider.notifier).logOut();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
