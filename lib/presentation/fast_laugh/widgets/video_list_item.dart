import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  final String image;

  const VideoListItem({super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.accents[index % Colors.accents.length],
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("$imageAppendUrl$image"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: kColorBlack.withOpacity(0.9),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off_sharp),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.themoviedb.org/t/p/w220_and_h330_face/kuf6dutpsT0vSVehic3EZIqkOBt.jpg"),
                        radius: 30,
                      ),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: "LOL"),
                    VideoActionWidget(icon: Icons.add, title: "My List"),
                    VideoActionWidget(icon: Icons.share, title: "Share"),
                    VideoActionWidget(
                        icon: Icons.play_arrow_rounded, title: "Play"),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({super.key, required this.icon, required this.title});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(title),
        ],
      ),
    );
  }
}
