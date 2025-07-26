import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({super.key, this.hintText, this.suffixIcon, this.controller});
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;


  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onTapOutside: (_){
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        fillColor: AppColors.white,
        filled: true,
        border: _border(),
        focusedBorder: _border(),
        hintText: widget.hintText,
        suffixIcon: widget.suffixIcon,
      ),
    );
  }

  _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.primary50,
      ),
    );
  }
}
