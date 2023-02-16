import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';

class MainCard2 extends StatelessWidget {
  const MainCard2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w220_and_h330_face/e49Sr3Lxfk2psYhv1SzQjs7MeGo.jpg"))),
    );
  }
}
