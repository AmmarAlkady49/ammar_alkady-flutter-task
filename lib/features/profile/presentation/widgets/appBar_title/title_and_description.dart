import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_text_styles.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.chevron_left_rounded,
                size: 24.sp,
                color: AppColors.black,
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              'إختر الباقات اللى تناسبك',
              style: AppTextStyles.font24BoldBlack,
            ),
          ],
        ),
        SizedBox(height: 6.h),
        Text(
          "أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك",
          style: AppTextStyles.font14RegularBlack,
        ),
      ],
    );
  }
}
