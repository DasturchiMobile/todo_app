import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static const TextStyle w400s14White = TextStyle(color: AppColors.white, fontWeight: FontWeight.w400, fontSize: 14);
  static const TextStyle w400s14Dark = TextStyle(color: AppColors.dark, fontWeight: FontWeight.w400, fontSize: 14);
  static const TextStyle w500s20Dark = TextStyle(color: AppColors.dark, fontWeight: FontWeight.w500, fontSize: 20);
  static const TextStyle w800s26Dark = TextStyle(color: AppColors.dark, fontWeight: FontWeight.w800, fontSize: 26);
}