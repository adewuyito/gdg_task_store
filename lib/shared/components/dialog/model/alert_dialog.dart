import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/gen/fonts.gen.dart';

@immutable
class AlertDialogModel<T> {
  final String title;
  final String message;
  final Map<String, T> buttons;

  const AlertDialogModel({
    required this.title,
    required this.message,
    required this.buttons,
  });

  Widget adaptiveAction({
    required BuildContext context,
    required VoidCallback onPressed,
    required Widget child,
    Color buttonColor = Colors.transparent,
  }) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(backgroundColor: buttonColor),
          child: child,
        );
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }
}

extension Present<T> on AlertDialogModel<T> {
  Future<T?> present(BuildContext context) {
    return showDialog<T>(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontFamily: FontFamily.generalSans),
          ),
          content: Text(
            message,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontFamily: FontFamily.athletics),
          ),
          actions: buttons.entries
              .map(
                (entry) => adaptiveAction(
                  context: context,
                  onPressed: () => Navigator.of(context).pop(entry.value),
                  child: Text(
                    entry.key,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
