import 'package:netflix_clone/core/string.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndsPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey ';
  static const southIndianMovie = '$kBaseUrl/discover/tv?api_key=$apiKey';
}
