import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class LocationFilterWidget extends StatelessWidget {
  const LocationFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: AppColors.black, size: 24.sp),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('الموقع', style: AppTextStyles.font14MediumBlack),
              Text('مصر', style: AppTextStyles.font12RegularGrey),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.black,
            size: 16.sp,
          ),
        ],
      ),
    );
  }
}
