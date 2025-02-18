class Product {
  final String? imagePath;
  final String? title;
  final int? price;
  final int? discount;

  Product({this.imagePath, this.title, this.price, this.discount});
}

List<Product> productList = [
  Product(
    imagePath: "assets/images/kurly_product_0.jpg",
    title: "[존쿡 델리미트] 바베큐 백립 450g",
    price: 16000,
    discount: 7,
  ),
  Product(
    imagePath: "assets/images/kurly_product_1.jpg",
    title: "카프리스 데 디유",
    price: 8400,
    discount: 15,
  ),
  Product(
    imagePath: "assets/images/kurly_product_2.jpg",
    title: "[당일수확] 친환경 하우스 딸기 (설향)",
    price: 8900,
    discount: 35,
  ),
  Product(
    imagePath: "assets/images/kurly_product_3.jpg",
    title: "[청오건강] 무항생제 손질 새우 230g",
    price: 6200,
    discount: 10,
  ),
  Product(
    imagePath: "assets/images/kurly_product_4.jpg",
    title: "[호주산]토마호크 신선 불고기 700g",
    price: 32000,
    discount: 15,
  ),
  Product(
    imagePath: "assets/images/kurly_product_5.jpg",
    title: "[맛있게 한끼] 국산콩 두부",
    price: 4600,
    discount: 15,
  ),
];
