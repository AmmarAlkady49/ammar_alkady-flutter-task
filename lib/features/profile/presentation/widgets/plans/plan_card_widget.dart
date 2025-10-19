import 'package:ammar_alkady_flutter_task/core/constants/app_colors.dart';
import 'package:ammar_alkady_flutter_task/core/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/helper_functions.dart';
import '../../bloc/cubit/plans_cubit.dart';

class PlanCardWidget extends StatelessWidget {
  final String planId;
  final String planTitle;
  final String price;
  final bool advValidity;
  final bool topOfTheList;
  final bool sanitaryContractor;
  final bool inAllEgypt;
  final bool featuredAd;
  final bool inJahra;
  final bool havePlanOffer;
  final String? padgeTitle;
  final String? numberOfViews;

  const PlanCardWidget({
    super.key,
    required this.planId,
    required this.planTitle,
    required this.price,
    this.advValidity = false,
    this.topOfTheList = false,
    this.sanitaryContractor = false,
    this.inAllEgypt = false,
    this.featuredAd = false,
    this.inJahra = false,
    this.havePlanOffer = false,
    this.padgeTitle,
    this.numberOfViews,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlansCubit>();
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 16.h,
            bottom: 16.h,
            left: 16.w,
            right: 12.w,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.grey.withAlpha(30)),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withAlpha(15),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildPlanTitle(planTitle, price, planId, cubit),
              SizedBox(height: 6.h),
              Divider(color: AppColors.grey.withAlpha(30), thickness: 1.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.h),
                      advValidity
                          ? buildFeature(
                              "صلاحية الأعلان 30 يوم",
                              Icons.watch_later_outlined,
                            )
                          : const SizedBox.shrink(),
                      topOfTheList
                          ? buildFeature(
                              "رفع لأعلى القائمة كل 2 يوم",
                              Icons.rocket_outlined,
                            )
                          : const SizedBox.shrink(),
                      sanitaryContractor
                          ? buildFeature(
                              "تثبيت فى مقاول صحى",
                              CupertinoIcons.pin,
                              featureSubtitle: "خلال ال48 ساعة القادمة ",
                            )
                          : const SizedBox.shrink(),
                      inAllEgypt
                          ? buildFeature(
                              "ظهور فى كل محافظات مصر",
                              CupertinoIcons.globe,
                            )
                          : const SizedBox.shrink(),
                      featuredAd
                          ? buildFeature(
                              "إعلان مميز",
                              Icons.workspace_premium_outlined,
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                  numberOfViews != null
                      ? buildNumberOfViews(numberOfViews!)
                      : const SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ),
        havePlanOffer
            ? Positioned(top: -22, child: planOfferPadge(padgeTitle ?? ""))
            : const SizedBox.shrink(),
      ],
    );
  }
}

Widget buildPlanTitle(
  String planTitle,
  String price,
  String planId,
  // bool isSelected,
  // VoidCallback onTap,
  PlansCubit cubit,
) {
  return BlocBuilder<PlansCubit, PlansState>(
    bloc: cubit,
    buildWhen: (previous, current) => current is PlanSelected,
    builder: (context, state) {
      return Row(
        children: [
          Checkbox(
            value: cubit.isSelected(planId),
            onChanged: (value) => cubit.selectPlan(planId),
            activeColor: AppColors.purple,
            checkColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.r),
            ),
            side: const BorderSide(color: AppColors.black, width: 2),
            visualDensity: VisualDensity.compact,
          ),
          Text(
            planTitle,
            style: cubit.isSelected(planId)
                ? AppTextStyles.font16BoldPurple
                : AppTextStyles.font16BoldBlack,
          ),
          Spacer(),

          Text(
            price,
            style: AppTextStyles.font16BoldSecondary.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: AppColors.secondary,
              decorationThickness: 30,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ],
      );
    },
  );
}

Widget buildFeature(String feature, IconData icon, {String? featureSubtitle}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5.h),
    child: Row(
      children: [
        Icon(icon, color: AppColors.black, size: 24.sp),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(feature, style: AppTextStyles.font14MediumBlack),
            if (featureSubtitle != null)
              Text(
                "($featureSubtitle)",
                style: AppTextStyles.font14MediumSecondary,
              ),
          ],
        ),
      ],
    ),
  );
}

Widget buildNumberOfViews(String numberOfViews) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/Number_Of_Views_Container.png",
            width: 71.w,
            height: 42.h,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 18.h,
            child: Text(
              numberOfViews,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.green,
              ),
            ),
          ),
        ],
      ),
      // left: 8.w,
      SizedBox(height: 2.h),
      SizedBox(
        width: 80.w,
        child: Text(
          "ضعف عدد المشاهدات",
          maxLines: 2,
          textAlign: TextAlign.center,
          style: AppTextStyles.font12RegularBlack.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: AppColors.grey,
            decorationThickness: 2,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ),
    ],
  );
}

Widget planOfferPadge(String padgeTitle) {
  final textWidth = HelperFunctions.measureTextWidth(
    padgeTitle,
    AppTextStyles.font12MediumRed,
  );
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        'assets/images/planPadge.png',
        width: textWidth + 25.w,
        // width: 145.w,
        height: 31.h,
        fit: BoxFit.fill,
      ),
      Positioned(
        right: 4.w,
        child: Text(padgeTitle, style: AppTextStyles.font12MediumRed),
      ),
    ],
  );
}
