import 'package:ammar_alkady_flutter_task/features/home/data/model/product_model.dart';

import '../../data/home_local_data_source.dart';
import '../../data/model/category_model.dart';

class HomeRepositoryImpl {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl(this.localDataSource);

  Future<List<ProductModel>> getProducts() async {
    return await localDataSource.fetchProducts();
  }

  Future<List<CategoryModel>> getCategories() async =>
      await localDataSource.fetchCategories();
}
