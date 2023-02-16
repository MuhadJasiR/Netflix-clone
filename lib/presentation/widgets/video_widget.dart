import 'package:flutter/material.dart';

import '../../core/constraints/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 200,
          child: Image(fit: BoxFit.cover, image: NetworkImage(kNewandHot)),
        ),
        Positioned(
          right: 5,
          bottom: 5,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: kColorBlack.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off_sharp,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
