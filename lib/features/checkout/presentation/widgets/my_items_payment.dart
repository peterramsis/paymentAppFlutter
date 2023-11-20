import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/widgets/my_item_method_payment.dart';

class MyItemsPayment extends StatelessWidget {
  MyItemsPayment({Key? key}) : super(key: key);

  final List<String> methods = [ "SVGRepo_iconCarrier.svg" ,"paypal.svg"  , "pay.svg"];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
        return  MyItemPaymentMethod(
          svg: "assets/images/${methods[index]}",
        );
      }, separatorBuilder: (context , index)=> const SizedBox(width: 10), itemCount: methods.length),
      ),
    );
  }
}
