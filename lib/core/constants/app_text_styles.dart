import 'package:ammar_alkady_flutter_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  // private constructor to prevent instantiation
  AppTextStyles._();

  // Font family constant
  static const String _fontFamily = 'Tajwal';

  // Base colors
  static const Color _blackColor = AppColors.black;
  static const Color _greyColor = AppColors.grey;
  static const Color _blueColor = AppColors.primary;
  static const Color _secondaryColor = AppColors.secondary;
  static const Color _greenColor = AppColors.green;
  static const Color _redColor = AppColors.red;
  static const Color _purpleColor = AppColors.purple;

  // ================= FONT SIZE 10 =================

  static TextStyle font10RegularBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: _blackColor,
  );

  static TextStyle font10RegularGrey = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: _greyColor,
  );

  // ================= FONT SIZE 12 =================
  static TextStyle font12MediumBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: _blackColor,
  );

  static TextStyle font12MediumGrey = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: _greyColor,
  );

  static TextStyle font12RegularBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: _blackColor,
  );

  static TextStyle font12RegularGrey = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: _greyColor,
  );

  static TextStyle font12RegularGreen = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: _greenColor,
  );

  static TextStyle font12MediumRed = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: _redColor,
  );

  // ================= FONT SIZE 14 =================

  static TextStyle font14MediumGrey = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: _greyColor,
  );

  static TextStyle font14MediumBlue = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: _blueColor,
  );

  static TextStyle font14MediumBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: _blackColor,
  );

  static TextStyle font14MediumSecondary = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: _secondaryColor,
  );

  static TextStyle font14MediumRed = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: _redColor,
  );

  static TextStyle font14RegularBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: _greyColor,
  );

  static TextStyle font14BoldPurple = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: _purpleColor,
  );

  // ================= FONT SIZE 16 =================

  static TextStyle font16MediumBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: _blackColor,
  );

  static TextStyle font16BoldGrey = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: _greyColor,
  );

  static TextStyle  font16MediumGrey = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: _greyColor,
  );

  static TextStyle font16BoldBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: _blackColor,
  );
  static TextStyle font16BoldSecondary = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: _secondaryColor,
  );

  static TextStyle font16BoldBlue = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: _blueColor,
  );

  static TextStyle font16BoldPurple = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.purple,
  );

  static TextStyle font16BoldWhite = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // ================= FONT SIZE 24 =================

  static TextStyle font24BoldBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: _blackColor,
  );

  static TextStyle font24MediumBlack = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: _blackColor,
  );
}
