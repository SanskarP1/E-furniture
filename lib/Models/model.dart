class ProductModel {
  String image;
  int price;

  ProductModel({
    required this.image,
    required this.price,
  });

  static List<ProductModel> imagelist() {
    return [
      ProductModel(image: '', price: 4),
    ];
  }
}
