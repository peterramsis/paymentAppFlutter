import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:payment/core/utils/styles.dart';

import 'package:payment/core/utils/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/widgets/my_item_method_payment.dart';
import 'package:payment/features/checkout/presentation/widgets/my_items_payment.dart';

class MyPaymentDetailsView extends StatelessWidget {
  const MyPaymentDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: CustomButton(
            title: "",
            svg: "assets/images/Arrow1.svg",
            myFunction: () => Navigator.of(context).pop(),
          ),
        ),
        centerTitle: true,
        title: Text(
          "My payment Details",
          style: Styles.style25,
        ),
      ),
      body: Column(
        children: [
          MyItemsPayment()
        ],
      ),
    );
  }
}
