class Product {
  final String title;
  final String sellerInfo;

  double consumerPrice;
  double pharmacyPrice;
  double discount;

  String? imagePath;
  bool hasPromotion;
  bool handShake;

  Product({
  required this.title, this.discount = 0, required this.sellerInfo, required this.consumerPrice,
  required this.pharmacyPrice, this.imagePath, this.hasPromotion = false, this.handShake = false}
  );
}