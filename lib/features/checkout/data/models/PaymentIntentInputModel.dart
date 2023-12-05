class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final int cusomerId;

  PaymentIntentInputModel({required this.amount, required this.currency , required this.cusomerId});

  toJson() {
    return {'amount': amount, 'currency': currency};
  }
}
