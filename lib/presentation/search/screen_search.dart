import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/constraints/constants.dart';
import 'package:netflix_clone/domain/core/debounce/debounce.dart';
import 'package:netflix_clone/presentation/search/widgets/search_idle.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBloc>(context).add(const initialize());
    });

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                _debouncer.run(() {
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(movieQuary: value));
                });
              },
            ),
            kHeight,
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return SearchIdleWidget();
                } else {
                  return SearchResultWidgets();
                }
              },
            ))
            // Expanded(child: SearchResultWidgets())
          ],
        ),
      )),
    );
  }
}
