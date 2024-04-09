import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';

class SelectedEpisodeNotifier extends StateNotifier<Episode?> {
  SelectedEpisodeNotifier() : super(null);

  void setEpisode(Episode episode) {
    state = episode;
  }
}

final selectedEpisodeProvider =
    StateNotifierProvider<SelectedEpisodeNotifier, Episode?>((ref) {
  return SelectedEpisodeNotifier();
});
