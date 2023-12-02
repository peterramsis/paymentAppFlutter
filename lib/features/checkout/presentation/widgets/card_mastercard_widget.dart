import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utils/styles.dart';

class MasterCardWidget extends StatelessWidget {
  const MasterCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            children: [
              SvgPicture.asset("assets/images/logo.svg"),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Credit Card", style: Styles.style18400W),
                    Text("Mastercard **78", style: Styles.style18400W),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
