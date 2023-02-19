import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'result.dart';

part 'comingsoon.g.dart';

@JsonSerializable()
class Comingsoon {
  Dates? dates;
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Comingsoon({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory Comingsoon.fromJson(Map<String, dynamic> json) {
    return _$ComingsoonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingsoonToJson(this);
}
