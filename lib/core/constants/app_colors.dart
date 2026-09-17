import 'package:flutter/material.dart';

/// Durosy App Color Palette
class AppColors {
  AppColors._();

  // الخلفية العامة
  static const Color background = Color(0xFFF2F0EB);

  // النص
  static const Color textPrimary = Color(0xFF111810);
  static const Color textMuted = Color(0xFF6B6860);

  // الكارد
  static const Color card = Color(0xFFFFFFFF);

  // Primary (شريط جانبي، أزرار رئيسية)
  static const Color primary = Color(0xFF054235);

  // Secondary (خلفيات خفيفة)
  static const Color secondary = Color(0xFFE8F5F1);

  // Accent (تفاصيل، الأيقونة)
  static const Color accent = Color(0xFFD97706);

  // Muted (حدود، خلفيات خافتة)
  static const Color muted = Color(0xFFE4E1DA);

  // الحدود
  static Color border = const Color(0xFF054235).withOpacity(0.12);
}
