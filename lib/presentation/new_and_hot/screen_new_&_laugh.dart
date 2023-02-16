import 'package:flutter/material.dart';

import '../../core/constraints/constants.dart';
import '../widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text(
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
        ),
      ),
      body: Text("ScreenNewAndHot"),
    );
  }
}
