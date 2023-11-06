import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/features/checkout/presentation/widgets/my_cart_body_view.dart';
class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: Center(
         child: SvgPicture.asset("assets/images/Arrow1.svg"),
       ),
        centerTitle: true,
        title: Text(
          "My Cart",
          style: Styles.style25,
        ),
      ),
      body: const MyCartBodyView(),
    );
  }
}
