import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;
  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.grey.withAlpha(30), width: 1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        iconSize: 24.sp,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bungalow_outlined),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'محادثة',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: Icon(Icons.add_box_outlined, color: AppColors.primary),
            label: 'أضف إعلان',
            tooltip: "إضافة إعلان",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset_outlined),
            label: 'إعلاناتي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'حسابى',
          ),
        ],
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        selectedLabelStyle: AppTextStyles.font12MediumBlack,
        unselectedLabelStyle: AppTextStyles.font12MediumBlack,
        onTap: onTap,
      ),
    );
  }
}
