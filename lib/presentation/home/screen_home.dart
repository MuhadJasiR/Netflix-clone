import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constraints/constants.dart';
import 'package:netflix_clone/presentation/home/Widgets/background_card.dart';
import '../widgets/main_title_card.dart';
import 'Widgets/custom_button_widget.dart';
import 'Widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: ((context, value, child) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }

                  return true;
                },
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          BackgroundCard(),
                          MainTitleCard(title: "Released in the past year"),
                          kHeight,
                          MainTitleCard(title: "Trending Now"),
                          kHeight,
                          NumberTitleCard(),
                          kHeight,
                          MainTitleCard(title: "Tense Dramas"),
                          kHeight,
                          MainTitleCard(title: "South Indian cinema"),
                        ],
                      ),
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Image(
                                      image: NetworkImage(
                                          "https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png"),
                                      width: 60,
                                      height: 50,
                                    ),
                                    const Spacer(),
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
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("TV Show", style: kHomeTextStyle),
                                    Text("Movies", style: kHomeTextStyle),
                                    Text("categories ", style: kHomeTextStyle)
                                  ],
                                )
                              ],
                            ),
                          )
                        : kHeight
                  ],
                ),
              );
            })));
  }
}
