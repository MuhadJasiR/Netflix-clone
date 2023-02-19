import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:netflix_clone/dio/everyonewatching/everyonewatching.dart';
import 'package:netflix_clone/dio/everyonewatching/result.dart';

ValueNotifier<List<Result>> everyOneWatching = ValueNotifier([]);
Future<void> everyOneWatch() async {
  try {
    var response = await Dio().get(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=a7e3114c27794b303392f55bfc49f007");
    final result = Everyonewatching.fromJson(response.data);
    print(result.results!.first.backdropPath);

    everyOneWatching.value = result.results ?? [];
    everyOneWatching.notifyListeners();
  } catch (e) {}
}
