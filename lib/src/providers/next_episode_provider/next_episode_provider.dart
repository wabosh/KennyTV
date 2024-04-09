import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/providers/episodes_provider/episodes_provider.dart';

part "next_episode_provider.g.dart";

@riverpod
Episode? nextEpisode(NextEpisodeRef ref, Episode currentEpisode) {
  final episodesWatcher = ref.watch(episodesProvider);

  return episodesWatcher.when(data: (episodes) {
    final seasonIndex = episodes.indexWhere((episodes) =>
        episodes.season.seasonId == currentEpisode.meta.seasonMgid);
    final seasonEpisodes = episodes[seasonIndex];

    final currentEpisodeIndex = seasonEpisodes.episodes
        .indexWhere((episode) => episode.id == currentEpisode.id);

    // Check if there is another episode in the same season
    // A If there is another episode in the same season, return the next episode in the same season
    // B If not, check if there is another season
    // B 1 If there is another season, return the first episode of that season
    // B 2 If there is no other season, return the first episode of the first season

    if (currentEpisodeIndex < seasonEpisodes.episodes.length - 1) {
      return seasonEpisodes.episodes[currentEpisodeIndex + 1];
    } else {
      if (seasonIndex < episodes.length - 1) {
        return episodes[seasonIndex + 1].episodes.first;
      } else {
        return episodes.first.episodes.first;
      }
    }
  }, error: (error, stack) {
    return null;
  }, loading: () {
    return null;
  });
}
