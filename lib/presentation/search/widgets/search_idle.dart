import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constraints/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleText(title: "Top Searches"),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchItemTile(),
            separatorBuilder: (context, index) => kHeight20,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        kWidth,
        const Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const Icon(
          Icons.play_circle_outline_sharp,
          color: kButtonColorWhite,
          size: 45,
        )
      ],
    );
  }
}
