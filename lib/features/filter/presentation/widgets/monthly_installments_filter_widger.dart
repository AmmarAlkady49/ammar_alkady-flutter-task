import 'package:ammar_alkady_flutter_task/core/shared/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_text_styles.dart';

class MonthlyInstallmentsFilterWidger extends StatelessWidget {
  const MonthlyInstallmentsFilterWidger({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("الأقساط الشهرية", style: AppTextStyles.font16MediumGrey),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(child: AppTextField()),
              SizedBox(width: 12.w),
              Expanded(child: AppTextField()),
            ],
          ),
        ],
      ),
    );
  }
}
