import 'package:flutter/material.dart';

class DashLineWidget extends StatelessWidget {
  const DashLineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.of(context).size.height * .2 + 20,
        left: 20,
        right: 20,
        child: Row(
          children: List.generate(
              30,
              (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        height: 2,
                        color: const Color(0xFFB7B7B7),
                      ),
                    ),
                  )),
        ));
  }
}
