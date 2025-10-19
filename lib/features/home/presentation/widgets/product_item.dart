import 'package:ammar_alkady_flutter_task/features/home/data/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/ic.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325.h,
      width: 158.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: AppColors.lightGrey, width: 1.w),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(product.imageUrl),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                // Title & Offer Badge
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.productName,
                        style: AppTextStyles.font14MediumBlack,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Iconify(Bxs.offer, color: AppColors.red, size: 20.sp),
                  ],
                ),
                SizedBox(height: 8.h),
                // Favorite & Price
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '${product.price},جم/',
                        style: AppTextStyles.font14MediumRed,
                        children: [
                          TextSpan(
                            text: '${product.discountPrice}',

                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.grey,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: AppColors.grey.withAlpha(150),
                              decorationThickness: 25.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border_rounded,
                      color: AppColors.black,
                      size: 22.sp,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                // How Many Sells
                Row(
                  children: [
                    Image.asset(
                      'assets/images/local_fire_icon.png',
                      height: 14.h,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'تم بيع ${product.salesCount}.k+',
                      style: AppTextStyles.font10RegularGrey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          // Company Logo & User Picture With Trusted Badge
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Row(
              children: [
                buildCompanyBadge(),
                Spacer(),
                buildAddToCartButton(),
                SizedBox(width: 12.w),
                Image.asset(
                  'assets/images/tmg_logo.png',
                  width: 15.w,
                  height: 22.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCompanyBadge() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary.withAlpha(35),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Iconify(
            Ic.round_corporate_fare,
            size: 16.sp,
            color: AppColors.primary,
          ),
        ),
      ),

      Positioned(
        top: -1,
        right: -3,
        child: Icon(
          Icons.check_circle_rounded,
          color: AppColors.primary,
          size: 14.sp,
        ),
      ),
    ],
  );
}

Widget buildAddToCartButton() {
  return Container(
    height: 24.h,
    width: 32.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.r),
      border: Border.all(color: AppColors.lightGrey, width: 1.w),
    ),
    child: Center(
      child: Icon(
        Icons.add_shopping_cart_rounded,
        color: AppColors.black,
        size: 16.sp,
      ),
    ),
  );
}
