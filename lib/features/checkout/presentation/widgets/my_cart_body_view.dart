import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/utils/widgets/custom_button.dart';
import 'package:payment/features/checkout/data/repo/check_out_import_repo.dart';
import 'package:payment/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment/features/checkout/presentation/widgets/my_cart_info.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_methods_sheet.dart';

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
                  builder: (context) => BlocProvider(
                        create: (context) => PaymentCubit(CheckOutImportRepo()),
                        child: const PaymentMethodsSheet(),
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
