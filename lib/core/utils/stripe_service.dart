import 'package:dio/dio.dart';
import 'package:payment/core/utils/api_key.dart';
import 'package:payment/core/utils/api_service.dart';
import 'package:payment/features/checkout/data/models/PaymentIntentInputModel.dart';
import 'package:payment/features/checkout/data/models/initi_payment_sheet_input_model.dart';
import 'package:payment/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

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

  Future initPaymentSheet(
      {required InitiPaymentSheetInputModel
          initiPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            customerEphemeralKeySecret:
                initiPaymentSheetInputModel.ephemeralKeySecret,
            customerId: initiPaymentSheetInputModel.customerId,
            merchantDisplayName: "Peter"));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var initiPaymentSheetInputModel = InitiPaymentSheetInputModel(clientSecret: paymentIntentModel.clientSecret!, customerId: paymentIntentModel., ephemeralKeySecret: ephemeralKeySecret)

    await displayPaymentSheet();
  }
}
