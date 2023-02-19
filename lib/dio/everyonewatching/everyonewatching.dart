import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'result.dart';

part 'everyonewatching.g.dart';

@JsonSerializable()
class Everyonewatching {
  Dates? dates;
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Everyonewatching({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory Everyonewatching.fromJson(Map<String, dynamic> json) {
    return _$EveryonewatchingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryonewatchingToJson(this);
}
