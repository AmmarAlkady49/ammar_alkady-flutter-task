import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  const AppTextField({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
        ),
        hintText: hintText,
        hintStyle: AppTextStyles.font14MediumGrey,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.2),
            width: 1.2.w,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
        ),
      ),
    );
  }
}
