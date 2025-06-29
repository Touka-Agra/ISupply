import 'Classes/CreditCard.dart';
import 'Classes/User.dart';

class DummyData{
  static User user = User(userName: "Takii",
      email: 'takii@gmail.com',
      password: '123456',
      //creditCard: CreditCard(limit: 100000, days: 14)
  );

  static List<double> creditLimits = [5000, 10000, 15000, 20000];
  static List<int> planDurations = [14, 30];
}
