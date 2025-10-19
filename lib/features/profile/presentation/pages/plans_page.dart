import 'package:ammar_alkady_flutter_task/core/constants/app_colors.dart';
import 'package:ammar_alkady_flutter_task/core/shared/widgets/simple_app_button.dart';
import 'package:ammar_alkady_flutter_task/features/profile/presentation/widgets/appBar_title/title_and_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../widgets/plans/plan_card_widget.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                TitleAndDescription(),
                SizedBox(height: 20.h),
                PlanCardWidget(
                  planId: '1',
                  planTitle: 'أساسية',
                  price: "3,000ج.م",
                  advValidity: true,
                ),
                SizedBox(height: 24.h),
                PlanCardWidget(
                  planId: '2',
                  planTitle: 'أكسترا',
                  price: "3,000ج.م",
                  advValidity: true,
                  topOfTheList: true,
                  sanitaryContractor: true,
                  numberOfViews: "7",
                ),
                SizedBox(height: 24.h),
                PlanCardWidget(
                  planId: '3',
                  planTitle: 'بلس',
                  price: "3,000ج.م",
                  advValidity: true,
                  topOfTheList: true,
                  sanitaryContractor: true,
                  inAllEgypt: true,
                  havePlanOffer: true,
                  padgeTitle: "أفضل قيمة مقابل سعر",
                  numberOfViews: "18",
                ),
                SizedBox(height: 24.h),
                PlanCardWidget(
                  planId: '4',
                  planTitle: 'سوبر',
                  price: "3,000ج.م",
                  advValidity: true,
                  featuredAd: true,
                  inAllEgypt: true,
                  inJahra: true,
                  sanitaryContractor: true,
                  topOfTheList: true,
                  havePlanOffer: true,
                  padgeTitle: "أعلى مشاهدات",
                  numberOfViews: "24",
                ),
                SizedBox(height: 24.h),
                buildContactWithSupport(),
                SizedBox(height: 36.h),
                SimpleAppButton(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("التالى", style: AppTextStyles.font16BoldWhite),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 24.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.h), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildContactWithSupport() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
    decoration: BoxDecoration(
      color: AppColors.grey.withAlpha(20),
      borderRadius: BorderRadius.circular(8.r),
      border: Border.all(color: AppColors.grey.withAlpha(30)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("باقات مخصصة لك", style: AppTextStyles.font14MediumBlack),
        SizedBox(height: 2.h),
        Text(
          "تواصل معنا لأختيار الباقة المناسبة لك",
          style: AppTextStyles.font12RegularBlack,
        ),
        SizedBox(height: 5.h),
        Text("فريق المبيعات", style: AppTextStyles.font16BoldBlue),
      ],
    ),
  );
}
