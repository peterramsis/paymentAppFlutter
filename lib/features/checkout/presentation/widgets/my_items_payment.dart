import 'package:flutter/material.dart';

import 'package:payment/features/checkout/presentation/widgets/my_item_method_payment.dart';

class MyItemsPayment extends StatelessWidget {
  const MyItemsPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            MyItemPaymentMethod(
              svg: "assets/images/SVGRepo_iconCarrier.svg",
              function: () => {},
            ),
            const SizedBox(width: 10),
            MyItemPaymentMethod(
              svg: "assets/images/paypal.svg",
              function: () => print("click"),
            ),
            const SizedBox(width: 10),
            MyItemPaymentMethod(
              svg: "assets/images/pay.svg",
              function: () => print("pay"),
            ),
          ],
        ),
      ),
    );
  }
}
