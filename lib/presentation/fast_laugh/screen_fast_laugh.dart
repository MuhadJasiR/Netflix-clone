import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';
import 'package:netflix_clone/dio/fast_laugh_function.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    fastLaughHtp();

    return Scaffold(
        body: SafeArea(
            child: ValueListenableBuilder(
                valueListenable: fastLaugh,
                builder: ((context, value, _) {
                  return PageView(
                      scrollDirection: Axis.vertical,
                      children: List.generate(
                          fastLaugh.value.length,
                          (index) => VideoListItem(
                                index: index,
                                image: value[index].posterPath ??
                                    "$imageAppendUrl${value[index].backdropPath}",
                              )));
                }))));
  }
}
