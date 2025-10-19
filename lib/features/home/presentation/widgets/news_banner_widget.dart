import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class NewsBannerWidget extends StatelessWidget {
  const NewsBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.lightSecondary,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        child: Row(
          children: [
            Icon(Icons.check_rounded, color: AppColors.green, size: 24.sp),
            SizedBox(width: 4.w),
            Text('شحن مجانى', style: AppTextStyles.font12RegularGreen),

            Spacer(),
            Text(
              'لأى عرض تطلبه دلوقتى !',
              style: AppTextStyles.font10RegularBlack,
            ),
          ],
        ),
      ),
    );
  }
}
