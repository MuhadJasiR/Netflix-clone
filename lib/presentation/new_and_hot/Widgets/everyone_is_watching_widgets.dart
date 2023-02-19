import 'package:flutter/material.dart';

import '../../../core/constraints/Colors.dart';
import '../../../core/constraints/constants.dart';
import '../../home/Widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class EveryoneIsWatchingWidgets extends StatelessWidget {
  const EveryoneIsWatchingWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          "Friends ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "This hit sitcom follows the merry misadventure of six\n20-something pass as they navigate the pitfalls of work,\nlife and love in 1990s Manhattan",
          style: TextStyle(color: kColorGrey),
        ),
        kHeight50,
        // const VideoWidget(id: ,),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
                textSize: 16,
                iconSize: 25,
                title: "Share",
                icon: Icons.send_outlined),
            kWidth,
            CustomButtonWidget(
              textSize: 16,
              iconSize: 25,
              title: "My List",
              icon: Icons.add,
            ),
            kWidth,
            CustomButtonWidget(
                textSize: 16,
                iconSize: 25,
                title: "Play",
                icon: Icons.play_arrow),
            kWidth
          ],
        )
      ],
    );
  }
}
