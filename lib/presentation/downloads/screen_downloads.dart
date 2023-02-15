import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          )),
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: kColorWhite,
                  )),
              Text("Smart downloads"),
            ],
          ),
          Text("Introducing Dowloads for you"),
          Text(
              "We will download personalised selection of movies and shows for you, so there is always something to watch on your device")
        ],
      ),
    );
  }
}
