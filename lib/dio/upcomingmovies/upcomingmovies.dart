import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'result.dart';

part 'upcomingmovies.g.dart';

@JsonSerializable()
class Upcomingmovies {
  Dates? dates;
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Upcomingmovies({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory Upcomingmovies.fromJson(Map<String, dynamic> json) {
    return _$UpcomingmoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcomingmoviesToJson(this);
}
