import 'package:flutter/material.dart';
import 'package:payment/core/utils/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/views/my_payment_details_view.dart';
import 'package:payment/features/checkout/presentation/widgets/my_cart_info.dart';
import 'package:payment/features/checkout/presentation/widgets/my_items_payment.dart';

class MyCartBodyView extends StatelessWidget {
  const MyCartBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Image.asset("assets/images/Group 6.png"),
          ),
          const MyCartInfo(
            discount: "10.00\$10",
            shipping: "10.00\$10",
            total: "10.00\$10",
          ),
          CustomButton(
            title: 'Complete Payment',
            myFunction: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyPaymentDetailsView()))
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const MyItemsPayment(),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomButton(title: "Complete Payment" ,myFunction: ()=>{},),
                            )
                          ],
                        ),
                      ));
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
