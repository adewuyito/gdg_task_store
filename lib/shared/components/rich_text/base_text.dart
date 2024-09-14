import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show TextStyle, Colors, TextDecoration;

import 'link_text.dart';

@immutable
class BaseText {
  final String text;
  final TextStyle? style;

  const BaseText({required this.text, this.style});

  factory BaseText.plain({
    required String text,
    TextStyle? style = const TextStyle(),
  }) {
    return BaseText(
      text: text,
      style: style,
    );
  }

  factory BaseText.link({
    required VoidCallback onTapped,
    required String text,
    TextStyle? style = const TextStyle(
      color: Colors.blue,
      decoration: TextDecoration.underline,
    ),
  }) {
    return LinkText(
      onTapped: onTapped,
      text: text,
      style: style,
    );
  }
}
