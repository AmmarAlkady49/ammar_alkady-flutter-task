import 'dart:developer';

import 'package:ammar_alkady_flutter_task/features/home/domain/repositories/home_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/home_local_data_source.dart';
import '../../../data/model/category_model.dart';
import '../../../data/model/product_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final homeRepo = HomeRepositoryImpl(HomeLocalDataSource());

  void emitHomeProducts() async {
    emit(LoadingHomeProducts());
    try {
      final products = await homeRepo.getProducts();
      log(products.length.toString());
      emit(LoadedHomeProducts(products));
    } catch (e) {
      emit(ErrorHomeProducts(e.toString()));
    }
  }

  void emitHomeCategories() async {
    emit(LoadingHomeCategories());
    try {
      final categories = await homeRepo.getCategories();
      emit(LoadedHomeCategories(categories));
    } catch (e) {
      emit(ErrorHomeCategories(e.toString()));
    }
  }
}
