import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';

class MainCard2 extends StatelessWidget {
  const MainCard2({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage("$imageAppendUrl$image"))),
    );
  }
}
