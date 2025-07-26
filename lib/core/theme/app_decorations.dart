import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppDecorations {
  static BoxDecoration indicator = BoxDecoration(
    color: AppColors.primary,
    borderRadius: BorderRadius.circular(12),
  );

  static BoxDecoration whiteR12 = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: AppColors.white,
  );

  static BoxDecoration primary50R12 = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: AppColors.primary50,
  );

  static BoxDecoration primaryR12 = BoxDecoration(
    color: AppColors.primary,
    borderRadius: BorderRadius.circular(12),
  );
}