import 'package:ammar_alkady_flutter_task/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: 'Tajwal',
      // textTheme: TextTheme(
      //   displayLarge: AppTextStyles.font32Weight700White,
      //   displayMedium: AppTextStyles.font24Weight700Black,
      //   bodyLarge: AppTextStyles.font16Weight500Black,
      //   bodyMedium: AppTextStyles.font14Weight400Grey,
      //   bodySmall: AppTextStyles.font12Weight400Grey,
      // ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.grey,
        selectedLabelStyle: AppTextStyles.font12MediumBlack,
        unselectedLabelStyle: AppTextStyles.font12MediumGrey,
      ),
    );
  }
}
