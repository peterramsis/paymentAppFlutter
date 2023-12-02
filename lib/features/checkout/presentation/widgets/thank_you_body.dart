import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/core/utils/widgets/dash_line.dart';
import 'package:payment/features/checkout/presentation/widgets/card_mastercard_widget.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -26),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFEDEDED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const Positioned(
              top: -40,
              right: 0,
              left: 0,
              child: CircleAvatar(
                backgroundColor: Color(0xFFEDEDED),
                radius: 40,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF34A853),
                  child: Icon(Icons.check, color: Colors.white, size: 50),
                ),
              ),
            ),
            Positioned(
              left: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            const DashLineWidget(),
            Positioned(
                right: 0,
                left: 0,
                top: 40,
                child: Text("Thank you",
                    textAlign: TextAlign.center, style: Styles.style22)),
            Positioned(
                right: 0,
                left: 0,
                top: 75,
                child: Text("Your transaction was successful",
                    textAlign: TextAlign.center, style: Styles.style20)),
            Positioned(
                right: 0,
                left: 0,
                top: 100,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Table(
                        columnWidths: const {
                          0: FlexColumnWidth(7),
                          1: FlexColumnWidth(4),
                        },
                        children: [
                          TableRow(children: [
                            TableCell(
                                child: Text(
                              "Date",
                              style: Styles.style18400W,
                            )),
                            TableCell(
                                child: Text(
                              "01/24/2023",
                              style: Styles.style18,
                            )),
                          ]),
                          TableRow(children: [
                            TableCell(
                                child: Text(
                              "Time",
                              style: Styles.style18400W,
                            )),
                            TableCell(
                                child: Text(
                              "10:15 AM",
                              style: Styles.style18,
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                                child: Text(
                              "To ",
                              style: Styles.style18400W,
                            )),
                            TableCell(
                                child: Text(
                              "Sam Louis",
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
                            "Total",
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
                )),
            const Positioned(
                right: 0, left: 0, top: 300, child: MasterCardWidget()),
            Positioned(
                bottom: (MediaQuery.of(context).size.height * .2 + 20) / 2 - 42,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/barcode.png"),
                        Container(
                          width: 113,
                          height: 58,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1.50, color: Color(0xFF34A853)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Center(
                            child: Text("Paid",
                                style: TextStyle(
                                  color: Color(0xFF34A853),
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
