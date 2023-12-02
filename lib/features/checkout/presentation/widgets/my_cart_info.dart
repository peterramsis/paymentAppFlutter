import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class MyCartInfo extends StatelessWidget {
  const MyCartInfo(
      {Key? key,
      required this.discount,
      required this.shipping,
      required this.total})
      : super(key: key);
  final String discount;
  final String total;
  final String shipping;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Table(
              columnWidths: const {
                0: FlexColumnWidth(8),
                1: FlexColumnWidth(2),
              },
              children: [
                TableRow(children: [
                  TableCell(
                      child: Text(
                    "Order sub total",
                    style: Styles.style18,
                  )),
                  TableCell(
                      child: Text(
                    "10.00\$",
                    style: Styles.style18,
                  )),
                ]),
                TableRow(children: [
                  TableCell(
                      child: Text(
                    "Discount",
                    style: Styles.style18,
                  )),
                  TableCell(
                      child: Text(
                    "10.00\$",
                    style: Styles.style18,
                  ))
                ]),
                TableRow(children: [
                  TableCell(
                      child: Text(
                    "Shipping ",
                    style: Styles.style18,
                  )),
                  TableCell(
                      child: Text(
                    "20.90\$",
                    style: Styles.style18,
                  ))
                ])
              ],
            ),
            const Divider(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: Styles.style25,
                ),
                Text(
                  "20\$",
                  style: Styles.style25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
