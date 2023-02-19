import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:netflix_clone/dio/fastlaugh/fastlaugh.dart';
import 'package:netflix_clone/dio/fastlaugh/result.dart';

ValueNotifier<List<Result>> fastLaugh = ValueNotifier([]);

Future<void> fastLaughHtp() async {
  try {
    var response = await Dio().get(
        "https://api.themoviedb.org/3/trending/tv/day?api_key=a7e3114c27794b303392f55bfc49f007");
    print(response.data);
    final fast = Fastlaugh.fromJson(response.data);
    fastLaugh.value = fast.results ?? [];
    fastLaugh.notifyListeners();
  } catch (e) {}
}
