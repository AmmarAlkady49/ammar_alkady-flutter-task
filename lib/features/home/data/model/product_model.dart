class ProductModel {
  final String productId;
  final String productName;
  final String imageUrl;
  final String price;
  final String? discountPrice;
  final String? salesCount;

  ProductModel({
    required this.productId,
    required this.productName,
    required this.imageUrl,
    required this.price,
    this.discountPrice,
    this.salesCount,
  });

  ProductModel copyWith({
    String? productId,
    String? productName,
    String? imageUrl,
    String? price,
    String? discountPrice,
    String? salesCount,
  }) {
    return ProductModel(
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      discountPrice: discountPrice ?? this.discountPrice,
      salesCount: salesCount ?? this.salesCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'productName': productName,
      'imageUrl': imageUrl,
      'price': price,
      'discountPrice': discountPrice,
      'salesCount': salesCount,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productId: map['productId'],
      productName: map['productName'],
      imageUrl: map['imageUrl'],
      price: map['price'],
      discountPrice: map['discountPrice'],
      salesCount: map['salesCount'],
    );
  }
}
