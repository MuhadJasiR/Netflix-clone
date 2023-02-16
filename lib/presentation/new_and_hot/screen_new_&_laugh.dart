import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

import '../../core/constraints/Colors.dart';
import '../../core/constraints/constants.dart';
import '../home/Widgets/coming_soon_widget.dart';
import '../home/Widgets/custom_button_widget.dart';
import 'Widgets/everyone_is_watching_widgets.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                "New & Hot",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cast,
                      color: Colors.white,
                      size: 30,
                    )),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.blue,
                ),
                kWidth
              ],
              bottom: TabBar(
                  isScrollable: false,
                  unselectedLabelColor: kColorWhite,
                  labelColor: kColorBlack,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: kColorWhite,
                      borderRadius: BorderRadius.circular(30)),
                  tabs: const [
                    Tab(
                      text: "Coming Soon...",
                    ),
                    Tab(
                      text: "Everyone is watching",
                    )
                  ]),
            ),
          ),
          body: TabBarView(
              children: [_buildComingSoon(), _buildEveryOneIsWatching()])),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: ((context, index) {
        return const ComingSoonWidget();
      }),
    );
  }

  Widget _buildEveryOneIsWatching() {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          return const EveryoneIsWatchingWidgets();
        }));
  }
}
