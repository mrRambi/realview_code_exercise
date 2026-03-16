import 'package:flutter/material.dart';

/// Application color palette.
abstract final class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF2563EB);
  static const Color primaryLight = Color(0xFFEFF6FF);
  static const Color secondary = Color(0xFF3B82F6);

  static const Color backgroundLight = Color(0xFFF8FAFC);
  static const Color surface = Color(0xFFFFFFFF);

  static const Color textDark = Color(0xFF1E293B);
  static const Color textMuted = Color(0xFF64748B);

  static const Color divider = Color(0xFFE2E8F0);
  static const Color error = Color(0xFFEF4444);
}
