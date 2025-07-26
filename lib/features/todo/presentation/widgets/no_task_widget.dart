import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/app_images.dart';
import 'package:todo_app/core/theme/app_styles.dart';

class NoTaskWidget extends StatelessWidget {
  const NoTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              AppImages.noTask,
              height: 100,
          ),
          SizedBox(height: 16),
          Text("Hozircha vazifalar mavjud emas", style: AppStyles.w500s20Dark),
        ],
      ),
    );
  }
}
