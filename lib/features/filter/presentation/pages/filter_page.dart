import 'package:ammar_alkady_flutter_task/core/shared/widgets/simple_app_button.dart';
import 'package:ammar_alkady_flutter_task/features/filter/presentation/widgets/location_filter_widget.dart';
import 'package:ammar_alkady_flutter_task/features/filter/presentation/widgets/monthly_installments_filter_widger.dart';
import 'package:ammar_alkady_flutter_task/features/filter/presentation/widgets/price_filter_widget.dart';
import 'package:ammar_alkady_flutter_task/features/filter/presentation/widgets/selection_chip_filter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../bloc/cubit/filter_cubit.dart';
import '../widgets/category_filter_widget.dart';
import '../widgets/title_backButton_filter_widget.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<FilterCubit>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 16.h),
              TitleBackbuttonFilterWidget(),
              SizedBox(height: 16.h),
              CategoryFilterWidget(),
              SizedBox(height: 16.h),
              Divider(
                color: AppColors.black.withValues(alpha: 0.1),
                height: 2.h,
              ),
              SizedBox(height: 16.h),
              LocationFilterWidget(),
              SizedBox(height: 16.h),
              Divider(
                color: AppColors.black.withValues(alpha: 0.1),
                height: 2.h,
              ),
              SizedBox(height: 16.h),
              MonthlyInstallmentsFilterWidger(),
              SizedBox(height: 16.h),
              SelectionChipFilterWidget(
                items: cubit.buildingTypes,
                title: "النوع",
                cubit: cubit,
                type: 'buildingTypes',
              ),
              SizedBox(height: 16.h),
              SelectionChipFilterWidget(
                items: cubit.roomNumbers,
                title: "عدد الغرف",
                cubit: cubit,
                type: 'roomNumber',
              ),
              SizedBox(height: 16.h),
              PriceFilterWidget(),
              SizedBox(height: 16.h),
              SelectionChipFilterWidget(
                items: cubit.paymentMethods,
                title: "طريقة الدفع",
                cubit: cubit,
                type: 'paymentMethod',
              ),
              SizedBox(height: 16.h),
              SelectionChipFilterWidget(
                items: cubit.buildingStatus,
                title: "حالة العقار",
                cubit: cubit,
                type: 'buildingStatus',
              ),
              SizedBox(height: 34.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SimpleAppButton(
                  title: Text(
                    'شاهد 10,000+ نتائج',
                    style: AppTextStyles.font16BoldWhite,
                  ),
                  onPress: () {},
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
