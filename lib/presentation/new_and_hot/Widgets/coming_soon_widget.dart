import 'package:flutter/material.dart';
import 'package:netflix_clone/dio/comingsoon/result.dart';
import 'package:netflix_clone/presentation/home/Widgets/custom_button_widget.dart';

import '../../../core/constraints/Colors.dart';
import '../../../core/constraints/constants.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
    required this.result,
  }) : super(key: key);

  final Result result;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 480,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "FEB",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kColorGrey),
              ),
              Text(
                result.releaseDate == null
                    ? "34"
                    : result.releaseDate!.substring(8, 10),
                style: const TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          width: size.width - 50,
          height: 490,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                imageUrl: result.backdropPath ?? 'No image found',
                id: result.id ?? 0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 190,
                    child: Text(
                      result.title ?? "No title found",
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -5),
                    ),
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
              Text(
                result.title ?? "no title found",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              SizedBox(
                width: 300,
                child: Text(
                  result.overview ??
                      "Landing the lead in the school musical is a \ndream come true for Jodi, untilhe pressure \nsends her confidence -and her relationship-\ninto a tailspin",
                  style: const TextStyle(
                    color: kColorGrey,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
