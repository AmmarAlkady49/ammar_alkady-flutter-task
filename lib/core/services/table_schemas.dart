class TableSchemas {
  static const String productsTable = '''
  CREATE TABLE products (
  productId TEXT PRIMARY KEY,
  productName TEXT,
  imageUrl TEXT,
  price TEXT,
  discountPrice TEXT,
  salesCount TEXT
);
  ''';

  static const String plansTable = '''
  CREATE TABLE selected_plan (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    planId TEXT
  )
  ''';
}
