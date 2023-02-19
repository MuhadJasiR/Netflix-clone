import 'package:flutter/material.dart';
import 'package:netflix_clone/dio/new_and_hot/functions_new_and_hot.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/constraints/constants.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({
    Key? key,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);

  final String imageUrl;
  final int id;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  bool isMute = false;
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: "",
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          // child: Image(fit: BoxFit.cover, image: NetworkImage(kNewandHot)),
          child: YoutubePlayer(
            controller: _controller,
            thumbnail: Image.network("$imageAppendUrl${widget.imageUrl}"),
            showVideoProgressIndicator: true,
            onReady: () async {
              final keyword = await videoKeyword(widget.id);

              setState(() {
                _controller.load(keyword ?? "");
                _controller.pause();
              });
            },
          ),
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
