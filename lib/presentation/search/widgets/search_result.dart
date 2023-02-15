import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/tbaTFgGIaTL1Uhd0SMob6Dhi5cK.jpg";

class SearchResultWidgets extends StatelessWidget {
  const SearchResultWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: "Movies & TV"),
        kHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 1.5,
            children: List.generate(20, (index) => MainCard()),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
