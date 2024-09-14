// app colors
import 'package:flutter/material.dart';

const appColors = ThemeModel(
  black: Colors.black,
  white: Colors.white,
  transparent: Colors.transparent,
  blue: Color(0xFF0A66C2),
  red: Color(0xFFE01515),
  lightGreyAAABAD: Color(0xFFAAABAD),
  greyF6F6F6: Color(0xFFF6F6F6),
  greyE9E9E9: Color(0xFFE9E9E9),
  grey767676: Color(0xFF767676),
  gradientHigh: Color(0xFFE198F0),
  gradientLow: Color(0xFF3D05DD),
  dividerGrey: Color.fromARGB(1, 241, 241, 241),
  inputDecoration: Color(0xFFAAABAD),
  appGradient: [Color(0xFF3D05DD), Color(0xFFE198F0)],
  appbarUnderline: Color(0x4B00040A),
);

// theme model
class ThemeModel {
  const ThemeModel({
    required this.grey767676,
    required this.white,
    required this.black,
    required this.transparent,
    required this.blue,
    required this.red,
    required this.lightGreyAAABAD,
    required this.greyF6F6F6,
    required this.greyE9E9E9,
    required this.gradientHigh,
    required this.gradientLow,
    required this.dividerGrey,
    required this.inputDecoration,
    required this.appGradient,
    required this.appbarUnderline,
  });

  final Color white;
  final Color black;
  final Color transparent;
  final Color blue;
  final Color red;
  final Color lightGreyAAABAD;
  final Color greyF6F6F6;
  final Color greyE9E9E9;
  final Color grey767676;
  final Color gradientHigh;
  final Color gradientLow;
  final Color dividerGrey;
  final Color inputDecoration;
  final Color appbarUnderline;
  final List<Color> appGradient;
}

// const List<Color> myCirclesColors = [
//   Color(0xFFF7FBF1),
//   Color(0xFFE5F2F0),
//   Color(0xFFF4F4F4),
// ];
