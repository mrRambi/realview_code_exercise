import 'package:flutter/material.dart';

/// Application color palette.
/// Ratio: ~70% white/surface, ~20% neutral grey, ~10% blue accents.
abstract final class AppColors {
  AppColors._();

  // --- Blue accent (10% of UI surface) ---
  static const Color primary = Color(0xFF1D4ED8);       // deep blue – CTAs, focused borders
  static const Color primaryLight = Color(0xFFEFF6FF);  // very light blue – avatar bg, chips
  static const Color primaryMid = Color(0xFF3B82F6);    // medium blue – icons, links

  // --- Neutral / white (90% of UI surface) ---
  static const Color background = Color(0xFFFFFFFF);    // pure white – scaffold bg
  static const Color surface = Color(0xFFFFFFFF);       // pure white – cards, modals
  static const Color surfaceVariant = Color(0xFFF1F5F9); // very light grey – search bar fill

  // --- Text ---
  static const Color textDark = Color(0xFF0F172A);      // near-black – headlines
  static const Color textBody = Color(0xFF334155);      // dark slate – body text
  static const Color textMuted = Color(0xFF94A3B8);     // cool grey – meta, placeholders

  // --- Borders & dividers ---
  static const Color divider = Color(0xFFE2E8F0);       // light grey – card borders, dividers

  // --- Feedback ---
  static const Color error = Color(0xFFDC2626);
}
