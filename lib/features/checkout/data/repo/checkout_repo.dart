import 'package:dartz/dartz.dart';
import 'package:payment/core/utils/errors/failers.dart';
import 'package:payment/features/checkout/data/models/PaymentIntentInputModel.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
