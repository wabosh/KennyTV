import "package:freezed_annotation/freezed_annotation.dart";
import "package:kenny_tv/src/models/season_model/season_model.dart";

part "episode_model.freezed.dart";
part "episode_model.g.dart";

@freezed
class EpisodeMediaImage with _$EpisodeMediaImage {
  factory EpisodeMediaImage({
    required String url,
  }) = _EpisodeMediaImage;

  factory EpisodeMediaImage.fromJson(Map<String, dynamic> json) =>
      _$EpisodeMediaImageFromJson(json);
}

@freezed
class EpisodeMedia with _$EpisodeMedia {
  factory EpisodeMedia({
    required String duration,
    required EpisodeMediaImage image,
  }) = _EpisodeMedia;

  factory EpisodeMedia.fromJson(Map<String, dynamic> json) =>
      _$EpisodeMediaFromJson(json);
}

@freezed
class EpisodeMeta with _$EpisodeMeta {
  factory EpisodeMeta({
    required String subHeader,
    required String description,
    required String date,
    required String seasonMgid,
  }) = _EpisodeMeta;

  factory EpisodeMeta.fromJson(Map<String, dynamic> json) =>
      _$EpisodeMetaFromJson(json);
}

@freezed
class Episode with _$Episode {
  factory Episode({
    required String id,
    required String url,
    required EpisodeMedia media,
    required EpisodeMeta meta,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}

@freezed
class Episodes with _$Episodes {
  factory Episodes({
    required List<Episode> episodes,
    required Season season,
  }) = _Episodes;

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
}

@freezed
class EpisodesResponse with _$EpisodesResponse {
  factory EpisodesResponse({
    required Episodes items,
  }) = _EpisodesResponse;

  factory EpisodesResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodesResponseFromJson(json);
}
