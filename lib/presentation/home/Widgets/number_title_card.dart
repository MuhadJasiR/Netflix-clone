import 'package:flutter/material.dart';
import 'package:netflix_clone/dio/southindianmovies/southindianmovie.dart';
import 'package:netflix_clone/presentation/home/Widgets/number_card.dart';

import '../../../core/constraints/constants.dart';
import '../../widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
    required this.result,
  }) : super(key: key);
  final List<ScrollImageHome> result;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Top 10 Tv Shows In India Today"),
        kHeight,
        LimitedBox(
          maxHeight: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                      index: index,
                      imageUrl: result[index].backgroundImage,
                    )),
          ),
        )
      ],
    );
  }
}
