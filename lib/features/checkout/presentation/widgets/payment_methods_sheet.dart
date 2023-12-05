import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/widgets/custom_button_consumer.dart';
import 'package:payment/features/checkout/presentation/widgets/my_items_payment.dart';

class PaymentMethodsSheet extends StatelessWidget {
  const PaymentMethodsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyItemsPayment(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomButtonConsumer(),
          )
        ],
      ),
    );
  }
}
