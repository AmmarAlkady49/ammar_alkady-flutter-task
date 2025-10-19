import 'package:ammar_alkady_flutter_task/features/home/presentation/widgets/categories_widget.dart';
import 'package:ammar_alkady_flutter_task/features/home/presentation/widgets/news_banner_widget.dart';
import 'package:ammar_alkady_flutter_task/features/home/presentation/widgets/sub_categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/grid_products_widget.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategoriesWidget(),
              SizedBox(height: 33.h),
              SubCategoriesWidget(),
              SizedBox(height: 33.h),
              NewsBannerWidget(),
              SizedBox(height: 20.h),
              GridProductsWidget(),
              SizedBox(height: 28.h),
            ],
          ),
        ),
      ),
    );
  }
}
