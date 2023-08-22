import 'package:custom_palette/config/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(extensions: [_light]);
  static final darkTheme = ThemeData.dark().copyWith(extensions: [_dark]);
}

const _light = AppColors(
    accentuated: Color.fromRGBO(63, 81, 181, 1),
    overlay: Color(0xB10F1C14),
    hint: Color(0x7EFFFFFF));
final _dark = _light.copyWith(
  accentuated: const Color(0xFFFFC107),
);
