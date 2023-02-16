import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/Widgets/custom_button_widget.dart';

import '../../../core/constraints/Colors.dart';
import '../../../core/constraints/constants.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kColorGrey),
              ),
              Text(
                "11",
                style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                children: [
                  const Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -5),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                          textSize: 10,
                          iconSize: 20,
                          title: "Remaind Me",
                          icon: Icons.notifications_active_outlined),
                      kWidth,
                      CustomButtonWidget(
                          textSize: 10,
                          iconSize: 20,
                          title: "Info",
                          icon: Icons.info_outline_rounded),
                      kWidth
                    ],
                  )
                ],
              ),
              kHeight,
              const Text("Coming on Friday"),
              kHeight,
              const Text(
                "TALL GIRL 2 ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              const Text(
                "Landing the lead in the school musical is a \ndream come true for Jodi, untilhe pressure \nsends her confidence -and her relationship-\ninto a tailspin",
                style: TextStyle(color: kColorGrey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
