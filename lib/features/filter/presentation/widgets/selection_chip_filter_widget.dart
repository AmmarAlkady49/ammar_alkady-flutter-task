import 'package:ammar_alkady_flutter_task/features/filter/presentation/bloc/cubit/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/shared/widgets/app_selection_chip_widget.dart';

class SelectionChipFilterWidget extends StatelessWidget {
  final List<String> items;
  final String title;
  final String type;
  final FilterCubit cubit;
  const SelectionChipFilterWidget({
    super.key,
    required this.items,
    required this.title,
    required this.type,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.font16MediumGrey),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerRight,
            child: Wrap(
              spacing: 8.w,
              runSpacing: 12.h,
              textDirection: TextDirection.rtl,
              alignment: WrapAlignment.start,
              children: items.map((item) {
                return BlocBuilder<FilterCubit, FilterState>(
                  bloc: cubit,
                  buildWhen: (previous, current) => current is SelecteChip,
                  builder: (context, state) {
                    return InkWell(
                      onTap: () => cubit.selectChip(item, type),
                      borderRadius: BorderRadius.circular(30.r),
                      child: AppSelectionChipWidget(
                        title: item,
                        type: type,
                        cubit: cubit,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
