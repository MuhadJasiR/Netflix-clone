import 'package:flutter/material.dart';
import 'package:netflix_clone/dio/new_and_hot/functions_new_and_hot.dart';
import 'package:netflix_clone/dio/southindianmovies/function_southindian_movie.dart';
import 'package:netflix_clone/dio/southindianmovies/southindianmovie.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';

import '../../core/constraints/constants.dart';
import '../search/widgets/search_result.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title, required this.result})
      : super(key: key);

  final String title;
  final List<ScrollImageHome> result;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
            maxHeight: 210,
            child: ValueListenableBuilder(
                valueListenable: southIndianMovie,
                builder: ((context, value, child) {
                  return southIndianMovie.value.isNotEmpty
                      ? ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                              10,
                              (index) => MainCard2(
                                  image: value[index].backgroundImage)),
                        )
                      : const CircularProgressIndicator(
                          strokeWidth: 2,
                        );
                })))
      ],
    );
  }
}
