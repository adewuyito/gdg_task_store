import 'package:flutter/material.dart';
import 'package:gd_store/shared/components/dialog/model/alert_dialog.dart';

@immutable
class LogOutDialog extends AlertDialogModel<bool> {
  LogOutDialog()
      : super(
          title: 'Log Out',
          buttons: {
            'Cancel': false,
            'Log out': true,
          },
          message: 'Are you sure you want to log out',
        );
}
