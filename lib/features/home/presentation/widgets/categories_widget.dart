import 'package:ammar_alkady_flutter_task/core/constants/app_colors.dart';
import 'package:ammar_alkady_flutter_task/core/constants/app_text_styles.dart';
import 'package:ammar_alkady_flutter_task/features/filter/presentation/bloc/cubit/filter_cubit.dart';
import 'package:ammar_alkady_flutter_task/features/filter/presentation/pages/filter_page.dart';
import 'package:ammar_alkady_flutter_task/features/home/presentation/bloc/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h),
      child: Column(
        children: [
          // Title & All Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('إستكشف العروض', style: AppTextStyles.font16MediumBlack),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => FilterCubit(),
                          child: FilterPage(),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text('الكل', style: AppTextStyles.font16BoldGrey),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.arrow_back_rounded,
                        textDirection: TextDirection.ltr,
                        color: AppColors.grey,
                        size: 24.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),

          // Sub Category Chips Section
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SizedBox(
              height: 41.h,
              child: BlocBuilder<HomeCubit, HomeState>(
                bloc: context.read<HomeCubit>(),
                buildWhen: (previous, current) =>
                    current is LoadingHomeCategories ||
                    current is LoadedHomeCategories ||
                    current is ErrorHomeCategories,
                builder: (context, state) {
                  if (state is LoadedHomeCategories) {
                    final categories = state.categories;

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Container(
                          height: 94.h,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? AppColors.lightSecondary
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: AppColors.lightGrey),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 11.h,
                            ),
                            child: Center(
                              child: Text(
                                categories[index].name,
                                style: index == 0
                                    ? AppTextStyles.font14MediumSecondary
                                    : AppTextStyles.font14MediumGrey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
