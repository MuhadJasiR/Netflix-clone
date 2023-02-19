import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/dio/comingsoon/result.dart';
import 'package:netflix_clone/dio/comingvideo/comingvideo.dart';

import '../comingsoon/comingsoon.dart';

ValueNotifier<List<Result>> listOfComing = ValueNotifier([]);

Future comingSoonGet() async {
  try {
    var response = await Dio().get(
        "https://api.themoviedb.org/3/movie/upcoming?api_key=a7e3114c27794b303392f55bfc49f007");

    final result = Comingsoon.fromJson(response.data);
    print(result.results!.first.backdropPath);
    listOfComing.value = result.results ?? [];
    listOfComing.notifyListeners();
  } catch (e) {}
}

Future<String?> videoKeyword(int id) async {
  print(id);
  var response = await Dio().get(
      "https://api.themoviedb.org/3/movie/$id/videos?api_key=a7e3114c27794b303392f55bfc49f007&language=en-US#");
  final result2 = Comingvideo.fromJson(response.data);
  if (result2.results != null) {
    for (var element in result2.results!) {
      if (element.type == 'Trailer') {
        return element.key!;
      } else {
        print(element.name);
        log(element.name ?? "no Name");
        return element.key!;
      }
    }
  } else {
    return null;
  }
}
