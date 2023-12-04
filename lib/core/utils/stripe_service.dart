import 'package:dio/dio.dart';
import 'package:payment/core/utils/api_key.dart';
import 'package:payment/core/utils/api_service.dart';
import 'package:payment/features/checkout/data/models/PaymentIntentInputModel.dart';
import 'package:payment/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService appService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await appService.post(
        url: 'https://api.stripe.com/v1/payment_intents',
        data: paymentIntentInputModel.toJson(),
        token: ApiKey.apiKey,
        contentType: Headers.formUrlEncodedContentType);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
}
