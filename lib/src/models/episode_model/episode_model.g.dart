// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeMediaImageImpl _$$EpisodeMediaImageImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodeMediaImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$EpisodeMediaImageImplToJson(
        _$EpisodeMediaImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$EpisodeMediaImpl _$$EpisodeMediaImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeMediaImpl(
      duration: json['duration'] as String,
      image: EpisodeMediaImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodeMediaImplToJson(_$EpisodeMediaImpl instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'image': instance.image,
    };

_$EpisodeMetaImpl _$$EpisodeMetaImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeMetaImpl(
      subHeader: json['subHeader'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      seasonMgid: json['seasonMgid'] as String,
    );

Map<String, dynamic> _$$EpisodeMetaImplToJson(_$EpisodeMetaImpl instance) =>
    <String, dynamic>{
      'subHeader': instance.subHeader,
      'description': instance.description,
      'date': instance.date,
      'seasonMgid': instance.seasonMgid,
    };

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      media: EpisodeMedia.fromJson(json['media'] as Map<String, dynamic>),
      meta: EpisodeMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'media': instance.media,
      'meta': instance.meta,
    };

_$EpisodesImpl _$$EpisodesImplFromJson(Map<String, dynamic> json) =>
    _$EpisodesImpl(
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodesImplToJson(_$EpisodesImpl instance) =>
    <String, dynamic>{
      'episodes': instance.episodes,
      'season': instance.season,
    };

_$EpisodesResponseImpl _$$EpisodesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodesResponseImpl(
      items: Episodes.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodesResponseImplToJson(
        _$EpisodesResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
