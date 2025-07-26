import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/app_styles.dart';

class DeleteConfirmDialog extends StatelessWidget {
  const DeleteConfirmDialog({super.key});

  static show(BuildContext context) {
    return showDialog(context: context, builder: (context) => const DeleteConfirmDialog());
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text("Bu vazifani o'chirasizmi?", style: AppStyles.w400s14Dark),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text("Yo'q")),
        TextButton(onPressed: () => Navigator.of(context).pop(true), child: const Text("Ha"))
      ],
    );
  }
}
