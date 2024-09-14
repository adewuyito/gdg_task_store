import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTwoPartText extends StatelessWidget {
  final String firstPart;
  final String secondPart;
  final VoidCallback? linkTap;
  const RichTwoPartText({
    super.key,
    this.linkTap,
    required this.firstPart,
    required this.secondPart,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
          height: 1.5,
        ),
        children: [
          TextSpan(
            text: firstPart,
          ),
          TextSpan(
            text: ' $secondPart',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = linkTap,
          )
        ],
      ),
    );
  }
}
