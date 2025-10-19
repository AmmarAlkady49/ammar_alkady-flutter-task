import 'package:ammar_alkady_flutter_task/features/filter/presentation/bloc/cubit/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

class AppSelectionChipWidget extends StatelessWidget {
  final String title;
  final String type;
  final FilterCubit cubit;
  const AppSelectionChipWidget({
    super.key,
    required this.title,
    required this.type,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = cubit.isSelected(title, type);
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primary.withValues(alpha: 0.1)
            : AppColors.white,
        borderRadius: BorderRadius.circular(30.r),
        border: isSelected
            ? Border.all(color: AppColors.primary, width: 2.w)
            : Border.all(color: AppColors.lightGrey, width: 1.w),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 9.h),
      child: Text(
        title,
        style: isSelected
            ? AppTextStyles.font14MediumBlue
            : AppTextStyles.font14MediumGrey,
      ),
    );
  }
}
