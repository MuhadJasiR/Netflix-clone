import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'comingvideo.g.dart';

@JsonSerializable()
class Comingvideo {
  int? id;
  List<Result>? results;

  Comingvideo({this.id, this.results});

  factory Comingvideo.fromJson(Map<String, dynamic> json) {
    return _$ComingvideoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingvideoToJson(this);
}
