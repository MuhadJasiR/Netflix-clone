import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:netflix_clone/dio/southindianmovies/southindianmovie.dart';
import 'package:netflix_clone/domain/core/api_ends_points.dart';

ValueNotifier<List<ScrollImageHome>> southIndianMovie = ValueNotifier([]);
getHomeSouthIndian() async {
  try {
    Response response = await Dio(BaseOptions()).get(
        "https://api.themoviedb.org/3/discover/movie?api_key=a7e3114c27794b303392f55bfc49f007&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate");
    if (response.statusCode == 200 || response.statusCode == 201) {
      var json = response.data;
      log(json["results"].length.toString());
      for (var index = 0; index < json["results"].length; index++) {
        log("logging: $index");
        southIndianMovie.value.add(ScrollImageHome.fromJson(json, index));
        southIndianMovie.notifyListeners();
      }
    }
  } catch (e) {
    log("execption from the from release in past");
    log(e.toString());
  }
}
