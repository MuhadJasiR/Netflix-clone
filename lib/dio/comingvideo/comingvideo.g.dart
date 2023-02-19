// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comingvideo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comingvideo _$ComingvideoFromJson(Map<String, dynamic> json) => Comingvideo(
      id: json['id'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComingvideoToJson(Comingvideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
