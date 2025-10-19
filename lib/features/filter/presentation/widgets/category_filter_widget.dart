import 'package:ammar_alkady_flutter_task/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryFilterWidget extends StatelessWidget {
  const CategoryFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("الفئة", style: AppTextStyles.font16MediumGrey),
          SizedBox(height: 8.h),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svg/realState.svg',
                height: 24.h,
                width: 24.w,
              ),
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("عقارات", style: AppTextStyles.font14MediumBlack),
                  Text("فلل البيع", style: AppTextStyles.font12RegularGrey),
                ],
              ),
              Spacer(),
              Text("تغيير", style: AppTextStyles.font14BoldPurple),
            ],
          ),
        ],
      ),
    );
  }
}
