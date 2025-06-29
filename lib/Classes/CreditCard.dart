class CreditCard {
  double limit;
  late double spent;
  late double remaining;

  int days;
  late int remainingDays;

  late DateTime lastUpdate;

  CreditCard({required this.limit, required this.days}) {
    spent = 0.0;
    remaining = limit;
    remainingDays = days;
    lastUpdate = DateTime.now();
  }
}
