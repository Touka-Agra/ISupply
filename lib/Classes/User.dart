import 'CreditCard.dart';
import 'CreditStatus.dart';

class User {
  String userName;
  String email;
  String password;
  CreditCard? creditCard;

  late CreditStatus creditStatus;

  User({
    required this.userName,
    required this.email,
    required this.password,
    this.creditCard,
    CreditStatus? initialStatus
  }) {
    bool hasISupplyCard = !(creditCard == null);

    creditStatus = initialStatus ?? (hasISupplyCard? CreditStatus.hasCard : CreditStatus.notRequested);

  }
  void addCreditCard({required double limit, required int days}){
    creditCard = CreditCard(limit: limit, days: days);
    creditStatus = CreditStatus.hasCard;
  }

  void submitCreditRequest() {
    creditStatus = CreditStatus.pending;
  }
}
