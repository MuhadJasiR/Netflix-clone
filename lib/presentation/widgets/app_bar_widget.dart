import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
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
    );
  }
}
