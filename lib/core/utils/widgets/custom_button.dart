import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.title,
      this.svg,
      this.myFunction,
      this.isLoading = false})
      : super(key: key);

  final String title;
  final VoidCallback? myFunction;
  final String? svg;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunction,
      child: Container(
        width: double.infinity,
        height: 73,
        decoration: ShapeDecoration(
          color: title != "" ? const Color(0xFF34A853) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: isLoading == true
            ? const CircularProgressIndicator()
            : Center(
                child: title != ""
                    ? Text(title, style: Styles.style22)
                    : SvgPicture.asset(svg!)),
      ),
    );
  }
}
