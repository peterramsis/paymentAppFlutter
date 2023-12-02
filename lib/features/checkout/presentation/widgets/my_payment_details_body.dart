import 'package:flutter/material.dart';
import 'package:payment/core/utils/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment/features/checkout/presentation/widgets/CustomCreditCardWidget.dart';
import 'package:payment/features/checkout/presentation/widgets/my_items_payment.dart';

class MyPaymentDetailsBody extends StatefulWidget {
  const MyPaymentDetailsBody({Key? key}) : super(key: key);

  @override
  State<MyPaymentDetailsBody> createState() => _MyPaymentDetailsBodyState();
}

class _MyPaymentDetailsBodyState extends State<MyPaymentDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: ScrollController(),
      slivers: [
        const SliverToBoxAdapter(
          child: MyItemsPayment(),
        ),
        const SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 12, right: 12),
                child: CustomButton(
                  title: "Complete Payment",
                  myFunction: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ThankYouView()));
                  },
                ),
              ),
            ))
      ],
    );
  }
}
