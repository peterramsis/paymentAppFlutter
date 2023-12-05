import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/utils/widgets/custom_button.dart';
import 'package:payment/features/checkout/data/models/PaymentIntentInputModel.dart';
import 'package:payment/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view.dart';

class CustomButtonConsumer extends StatelessWidget {
  const CustomButtonConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      builder: (context, state) {
        return CustomButton(
            isLoading: state is PaymentLoading ? true : false,
            title: "Continue",
            myFunction: () {
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(amount: "100", currency: "USD");
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            });
      },
      listener: (context, state) {
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          print(state.error.toString());
          var snackBar = SnackBar(content: Text(state.error));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const ThankYouView()));
        }
      },
    );
  }
}
