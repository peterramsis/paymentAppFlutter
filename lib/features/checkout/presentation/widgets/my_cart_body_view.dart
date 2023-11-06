import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/widgets/my_cart_info.dart';

class MyCartBodyView extends StatelessWidget {
  const MyCartBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            height: 350,
            child: Image.asset("assets/images/Group 6.png"),
          ),
          const MyCartInfo(
            discount: "10.00\$10",
            shipping: "10.00\$10",
            total:  "10.00\$10",
          )
        ],
      ),
    );
  }
}

