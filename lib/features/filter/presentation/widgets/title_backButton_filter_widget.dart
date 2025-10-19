import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class TitleBackbuttonFilterWidget extends StatelessWidget {
  const TitleBackbuttonFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.close_rounded,
              size: 24.sp,
              color: AppColors.black,
            ),
            style: ButtonStyle(
              padding: WidgetStateProperty.all(EdgeInsets.zero),
              minimumSize: WidgetStateProperty.all(Size.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          SizedBox(width: 10.w),
          Text('فلترة', style: AppTextStyles.font24MediumBlack),
          Spacer(),
          Text('رجوع للأفتراضى', style: AppTextStyles.font16BoldBlue),
        ],
      ),
    );
  }
}
