import 'CreditCard.dart';

class User {
  String userName;
  String email;
  String password;
  CreditCard? creditCard;

  late bool hasISupplyCard;

  User({
    required this.userName,
    required this.email,
    required this.password,
    this.creditCard,
  }) {
    hasISupplyCard = !(creditCard == null);
  }
}
