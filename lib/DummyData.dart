import 'Classes/CreditCard.dart';
import 'Classes/Product.dart';
import 'Classes/User.dart';
import 'Core/Paths.dart';

class DummyData {
  static User user = User(
    userName: "Takii",
    email: 'takii@gmail.com',
    password: '123456',
    //creditCard: CreditCard(limit: 100000, days: 14),
  );

  static List<double> creditLimits = [5000, 10000, 15000, 20000];
  static List<int> planDurations = [14, 30];

  static int notificationCount = 100;
  static int cartCount = 3;

  static List<Product> products = [
    Product(
      title: 'TUSSKAN SYRUP 100ML',
      sellerInfo: 'دلتا فارما(البحيره)',
      consumerPrice: 24,
      pharmacyPrice: 19.92,
      discount: 10,
      hasPromotion: true,
      handShake: true
    ),
    Product(
      title: 'Beesline Sunscreen',
      sellerInfo: "العزبي",
      consumerPrice: 200,
      pharmacyPrice: 150,
      imagePath: MyPaths.beesline
    ),
    Product(
      title: 'PANADOL EXTRA 24 TAB',
      sellerInfo: 'Target Pharma',
      consumerPrice: 54,
      pharmacyPrice: 32.94,
      discount: 50,
      hasPromotion: true,
        imagePath: MyPaths.panadol,
      handShake: true
    ),
    Product(
      title: 'TUSSKAN SYRUO 100ML',
      sellerInfo: 'دلتا فارما(البحيره)',
      consumerPrice: 24,
      pharmacyPrice: 19.92,
      hasPromotion: true,
    ),
  ];
}
