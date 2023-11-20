import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MyItemPaymentMethod extends StatelessWidget {
  const MyItemPaymentMethod({Key? key ,required this.svg}) : super(key: key);

  final String svg;

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 120,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      child: Center(child: SvgPicture.asset(svg)),
    );
  }
}
