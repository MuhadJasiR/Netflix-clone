import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: ((context, int newIndex, _) {
          return BottomNavigationBar(
              currentIndex: newIndex,
              onTap: (index) {
                indexChangeNotifier.value = index;
              },
              selectedIconTheme: const IconThemeData(color: Colors.white),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection_rounded),
                  label: "New & Hot",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions),
                  label: "Fast Laughs",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.download),
                  label: "Downloads",
                ),
              ]);
        }));
  }
}
