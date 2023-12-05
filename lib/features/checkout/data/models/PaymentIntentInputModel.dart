class PaymentIntentInputModel {
  final String amount;
  final String currency;
  // final String customerId;

//required this.customerId
  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
  });

  toJson() {
    return {'amount': "${amount}00", 'currency': currency};
  }
}
