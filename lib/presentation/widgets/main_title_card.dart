import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';

import '../../core/constraints/constants.dart';
import '../search/widgets/search_result.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => MainCard2()),
          ),
        )
      ],
    );
  }
}