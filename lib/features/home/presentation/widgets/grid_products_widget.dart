import 'package:ammar_alkady_flutter_task/features/home/presentation/bloc/cubit/home_cubit.dart';
import 'package:ammar_alkady_flutter_task/features/home/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridProductsWidget extends StatelessWidget {
  const GridProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomeCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocBuilder<HomeCubit, HomeState>(
        bloc: cubit,
        buildWhen: (previous, current) =>
            current is LoadingHomeProducts ||
            current is LoadedHomeProducts ||
            current is ErrorHomeProducts,
        builder: (context, state) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              childAspectRatio: 0.36.h,
            ),
            itemBuilder: (context, index) {
              if (state is LoadedHomeProducts) {
                final product = state.products[index];
                return ProductItem(product: product);
              }
              return const SizedBox.shrink();
            },
            itemCount: state is LoadedHomeProducts ? state.products.length : 4,
          );
        },
      ),
    );
  }
}
