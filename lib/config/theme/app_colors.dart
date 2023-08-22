import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.accentuated,
    required this.overlay,
    required this.hint,
  });

  final Color? accentuated;
  final Color? overlay;
  final Color? hint;

  @override
  AppColors copyWith({
    Color? accentuated,
    Color? overlay,
    Color? hint,
  }) =>
      AppColors(
        accentuated: accentuated ?? this.accentuated,
        overlay: overlay ?? this.overlay,
        hint: hint ?? this.hint,
      );

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      accentuated: Color.lerp(accentuated, other.accentuated, t),
      overlay: Color.lerp(overlay, other.overlay, t),
      hint: Color.lerp(hint, other.hint, t),
    );
  }
}
