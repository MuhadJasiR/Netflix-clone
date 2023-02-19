import 'package:flutter/material.dart';
import 'package:netflix_clone/dio/new_and_hot/everyone_watching.dart';
import 'package:netflix_clone/dio/new_and_hot/functions_new_and_hot.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

import '../../core/constraints/Colors.dart';
import '../../core/constraints/constants.dart';
import 'Widgets/coming_soon_widget.dart';
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
                isScrollable: true,
                unselectedLabelColor: kColorWhite,
                labelColor: kColorBlack,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    color: kColorWhite,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryOneIsWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    comingSoonGet();
    return ValueListenableBuilder(
        valueListenable: listOfComing,
        builder: ((context, value, child) {
          return ListView.builder(
            itemCount: listOfComing.value.length,
            itemBuilder: ((context, index) {
              return ComingSoonWidget(
                result: value[index],
              );
            }),
          );
        }));
  }

  Widget _buildEveryOneIsWatching() {
    everyOneWatch();
    return ValueListenableBuilder(
        valueListenable: everyOneWatching,
        builder: ((context, value, child) {
          return ListView.builder(
              itemCount: 5,
              itemBuilder: ((context, index) {
                return EveryoneIsWatchingWidgets(result: value[index]);
              }));
        }));
  }
}
