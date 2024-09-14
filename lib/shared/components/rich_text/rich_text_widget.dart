import 'base_text.dart';
import 'link_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final Iterable<BaseText> texts;
  final TextStyle? styleForAll;
  final TextAlign? textAlign;

  const RichTextWidget({
    super.key,
    required this.texts,
    this.styleForAll,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign!,
      text: TextSpan(
        children: texts.map(
          (baseText) {
            /// Check for of the returned is a [LinkText] or a normal [BaseText]
            return TextSpan(
              text: baseText.text,
              style: styleForAll?.merge(baseText.style),
              recognizer: baseText is LinkText
                  ? (TapGestureRecognizer()..onTap = baseText.onTapped)
                  : null,
            );
          },
        ).toList(),
      ),
    );
  }
}
