import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';

class AppTextStyles {
  static final titleHome = GoogleFonts.lexendDeca(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );
  static final subtitleHome = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.body,
  );
  static final titleMenu = GoogleFonts.lexendDeca(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );
  static final buttonMenu = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.body,
  );
  static final subtitle = GoogleFonts.lexendDeca(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.body,
  );
  static final topic = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );
  static final bodytext = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.body,
  );
  static final textBreath = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.body,
  );
}
