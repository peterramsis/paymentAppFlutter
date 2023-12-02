import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/widgets/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Center(
          child: CustomButton(
            title: "",
            svg: "assets/images/Arrow1.svg",
            myFunction: () => Navigator.of(context).pop(),
          ),
        ),
        centerTitle: true,
        title: Text(
          "",
          style: Styles.style25,
        ),
      ),
      body: const ThankYouBody(),
    );
  }
}
