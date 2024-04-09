import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/providers/episodes_provider/episodes_provider.dart';

part "selected_season_provider.g.dart";

@riverpod
class SelectedSeasonNotifier extends _$SelectedSeasonNotifier {
  @override
  Episodes build() {
    final allEpisodes = ref.watch(episodesProvider).value!;
    return allEpisodes.first;
  }

  void selectSeason(int seasonNumber) {
    final allEpisodes = ref.read(episodesProvider).value!;
    final seasonListIndex = seasonNumber - 1;

    log("Selecting season $seasonNumber");

    if (seasonListIndex < 0 || seasonListIndex >= allEpisodes.length) {
      state = allEpisodes.first;
    } else {
      state = allEpisodes[seasonListIndex];
    }
  }
}
