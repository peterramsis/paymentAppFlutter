import 'package:dartz/dartz.dart';
import 'package:payment/core/utils/errors/failers.dart';
import 'package:payment/core/utils/stripe_service.dart';
import 'package:payment/features/checkout/data/models/PaymentIntentInputModel.dart';
import 'package:payment/features/checkout/data/repo/checkout_repo.dart';

class CheckOutImportRepo extends CheckOutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
