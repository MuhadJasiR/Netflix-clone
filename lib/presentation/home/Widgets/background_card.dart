import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/dio/new_and_hot/functions_new_and_hot.dart';

import '../../../core/constraints/constants.dart';
import 'custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ValueListenableBuilder(
            valueListenable: listOfComing,
            builder: ((context, value, child) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "$imageAppendUrl${value[7].posterPath}"))),
                width: double.infinity,
                height: 600,
                // color: Colors.blue,
              );
            })),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(icon: Icons.add, title: "My List"),
                _playButton(),
                const CustomButtonWidget(
                    icon: Icons.info_outline, title: "Info"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kColorWhite)),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          color: kColorBlack,
          size: 25,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Play",
            style: TextStyle(fontSize: 20, color: kColorBlack),
          ),
        ));
  }
}
