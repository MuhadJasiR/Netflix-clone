import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'fastlaugh.g.dart';

@JsonSerializable()
class Fastlaugh {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Fastlaugh({this.page, this.results, this.totalPages, this.totalResults});

  factory Fastlaugh.fromJson(Map<String, dynamic> json) {
    return _$FastlaughFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FastlaughToJson(this);
}
