import 'Classes/CreditCard.dart';
import 'Classes/User.dart';

class DummyData{
  static User user = User(userName: "Takii",
      email: 'takii@gmail.com',
      password: '123456',
      creditCard: CreditCard(limit: 100000, spent: 1000, days: 14)
  );
}
