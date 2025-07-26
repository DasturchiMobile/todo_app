
import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/app_colors.dart';

extension TodoStatusExtension on String {
  String get getTodoStatus {
    switch(this) {
      case "doing":
        return "Bajarilyapti";
      case "done":
        return "Bajarildi";
      default:
        return "Bajarilmadi";
    }
  }

  Color get getTodoStatusColor {
    switch(this) {
      case "doing":
        return AppColors.orange500;
      case "done":
        return AppColors.verdigris500;
      default:
        return AppColors.primary500;
    }
  }
}