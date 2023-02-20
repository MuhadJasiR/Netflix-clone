import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:netflix_clone/dio/southindianmovies/southindianmovie.dart';

ValueNotifier<List<ScrollImageHome>> top10ShowInIndia = ValueNotifier([]);

getHomeTop10ShowIndia() async {
  try {
    Response response = await Dio().get(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=a7e3114c27794b303392f55bfc49f007&language=en-US&page=1");
    if (response.statusCode == 200 || response.statusCode == 201) {
      var json = response.data;
      for (var index = 0; index < json["results"].length; index++) {
        top10ShowInIndia.value.add(ScrollImageHome.fromJson(json, index));
        top10ShowInIndia.notifyListeners();
      }
    }
  } catch (e) {}
}
