import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constraints/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w220_and_h330_face/fHMqfsYyl3lskPK2RiFRwhzwuep.jpg"))),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 10,
          child: BorderedText(
            strokeWidth: 10,
            strokeColor: kColorWhite,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 130,
                color: kColorBlack,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: kColorBlack,
              ),
            ),
          ),
        )
      ],
    );
  }
}
