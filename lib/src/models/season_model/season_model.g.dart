// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonImpl _$$SeasonImplFromJson(Map<String, dynamic> json) => _$SeasonImpl(
      url: json['url'] as String,
      shortId: json['shortId'] as String,
      number: json['number'] as int,
      seasonId: json['seasonId'] as String,
      encodedSeasonId: json['encodedSeasonId'] as String,
    );

Map<String, dynamic> _$$SeasonImplToJson(_$SeasonImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'shortId': instance.shortId,
      'number': instance.number,
      'seasonId': instance.seasonId,
      'encodedSeasonId': instance.encodedSeasonId,
    };
