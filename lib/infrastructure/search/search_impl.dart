import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/search/model/search_repo/search_repo.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/search/search_service.dart';

import '../../domain/core/api_ends_points.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchRepo>> searchMovies(
      {required String movieQuery}) async {
    print(movieQuery);
    try {
      final Response response = await Dio(BaseOptions()).get(
          "https://api.themoviedb.org/3/search/movie?api_key=a7e3114c27794b303392f55bfc49f007&language=en-US&query=${movieQuery}&page=1&include_adult=false");
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchRepo.fromJson(response.data);
        print("sa;djf");

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
