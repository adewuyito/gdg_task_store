import 'package:flutter/material.dart';

import '../enums.dart';

class GDButtonWidget extends StatelessWidget {
  const GDButtonWidget({
    super.key,
    required this.label,
    this.onPressed,
    this.buttonRole = ButtonRole.normal,
  });

  final VoidCallback? onPressed;
  final String label;
  final ButtonRole buttonRole;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? ranCommand;

    switch (buttonRole) {
      case ButtonRole.destructive: // ? Fix to work as intended
        ranCommand = onPressed;
        break;
      case ButtonRole.normal:
      default:
        ranCommand = onPressed;
        break;
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width - 24,
      child: ElevatedButton(
        onPressed: ranCommand,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          disabledBackgroundColor: buttonRole.deActiveColor,
          backgroundColor: buttonRole.activeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
