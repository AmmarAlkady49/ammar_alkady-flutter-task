part of 'home_cubit.dart';

class HomeState {}

final class HomeInitial extends HomeState {}

final class LoadingHomeProducts extends HomeState {}

final class LoadedHomeProducts extends HomeState {
  final List<ProductModel> products;
  LoadedHomeProducts(this.products);
}

final class ErrorHomeProducts extends HomeState {
  final String message;
  ErrorHomeProducts(this.message);
}

final class LoadingHomeCategories extends HomeState {}

final class LoadedHomeCategories extends HomeState {
  final List<CategoryModel> categories;
  LoadedHomeCategories(this.categories);
}

final class ErrorHomeCategories extends HomeState {
  final String message;
  ErrorHomeCategories(this.message);
}
