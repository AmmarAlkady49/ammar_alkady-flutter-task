import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class SimpleAppButton extends StatelessWidget {
  final Widget title;
  final Function()? onPress;
  const SimpleAppButton({super.key, required this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: title,
        ),
      ),
    );
  }
}
