import 'package:durosy/core/constants/app_colors.dart';
import 'package:durosy/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();

  // =========================
  // Headings
  // =========================

  static const TextStyle textStyle32 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle textStyle28 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle textStyle24 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // =========================
  // Titles
  // =========================

  static const TextStyle textStyle20 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle textStyle18 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // =========================
  // Body
  // =========================

  static const TextStyle textStyle16 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static const TextStyle textStyle14 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  static const TextStyle textStyle12 = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 12,
    color: AppColors.textMuted,
  );

  // =========================
  // Special
  // =========================

  static const TextStyle buttonText = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.card,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 12,
    color: AppColors.textMuted,
  );
}
