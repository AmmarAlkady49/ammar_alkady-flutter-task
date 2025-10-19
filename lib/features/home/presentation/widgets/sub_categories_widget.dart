import 'package:ammar_alkady_flutter_task/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoriesWidget extends StatelessWidget {
  const SubCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Map<String, String>> subCategories = [
      {'name': 'موضة رجالي', 'image': 'assets/images/man_photo_category.png'},
      {'name': 'ساعات', 'image': 'assets/images/watch_category.png'},
      {'name': 'موبايلات', 'image': 'assets/images/iPhone_category.png'},
      {'name': 'منتجات تجميلية', 'image': 'assets/images/mackup_category.png'},
      {'name': 'ڤلل', 'image': 'assets/images/villa_category.png'},
    ];
    return SizedBox(
      height: 80.h,

      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) => Column(
          children: [
            Image.asset(
              subCategories[index]['image']!,
              height: 56.h,
              width: 73.w,
            ),
            SizedBox(height: 8.h),
            Text(
              subCategories[index]['name']!,
              style: AppTextStyles.font12RegularBlack,
            ),
          ],
        ),
        itemCount: subCategories.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
