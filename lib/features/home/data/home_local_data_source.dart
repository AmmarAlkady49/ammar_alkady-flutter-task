import 'package:ammar_alkady_flutter_task/features/home/data/model/category_model.dart';

import 'model/product_model.dart';

class HomeLocalDataSource {
  Future<List<CategoryModel>> fetchCategories() async {
    return [
      CategoryModel(id: 1, name: 'كل العروض'),
      CategoryModel(id: 2, name: 'ملابس'),
      CategoryModel(id: 3, name: 'إكسسوارات'),
      CategoryModel(id: 4, name: 'الكترونيات'),
    ];
  }

  Future<List<ProductModel>> fetchProducts() async {
    return [
      ProductModel(
        productId: '1',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/black_hoodie_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '2',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/brown_t-shirt_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '3',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/shose_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '1',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/black_hoodie_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '2',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/brown_t-shirt_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '3',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/shose_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '1',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/black_hoodie_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '2',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/brown_t-shirt_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
      ProductModel(
        productId: '3',
        productName: "جاكيت من الصوف مناسبة",
        imageUrl: 'assets/images/shose_item.png',
        price: '32,00',
        discountPrice: '60,00',
        salesCount: '3.3',
      ),
    ];
  }
}
