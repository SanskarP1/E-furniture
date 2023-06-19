class ProductModel {
  int price;
  final List<String> images;

  ProductModel({
    required this.images,
    required this.price,
  });

  static List<ProductModel> trendinglist() {
    return [
      ProductModel(
        images: [
          'assets/images/mid.png',
          'assets/images/mid.png',
          'assets/images/mid.png'
        ],
        price: 4000,
      ),
    ];
  }
}
