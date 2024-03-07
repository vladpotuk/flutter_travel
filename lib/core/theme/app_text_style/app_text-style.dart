import 'package:flutter/material.dart';
import 'package:flutter_travel/core/theme/app_colors/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static TextStyle get splasText => GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.splashTextColor,
      );
  static TextStyle get primaryText => GoogleFonts.poppins(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryTextColor,
      );
  static TextStyle get secondaryText => GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.secondaryTextColor,
      );
}
