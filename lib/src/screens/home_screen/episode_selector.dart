import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/providers/selected_season_provider/selected_season_provider.dart';
import 'package:kenny_tv/src/screens/home_screen/episode_card.dart';
import "package:kenny_tv/src/constants.dart" as constants;

class EpisodeSelector extends ConsumerWidget {
  const EpisodeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seasonEpisodes = ref.watch(selectedSeasonNotifierProvider);

    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        height: 140.0,
        child: ListView.builder(
          padding: const EdgeInsets.only(
            left: constants.selectorPadding,
            bottom: constants.selectorPadding,
            right: constants.selectorPadding,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: seasonEpisodes.episodes.length,
          itemBuilder: (context, index) {
            return EpisodeCard(
              episode: seasonEpisodes.episodes[index],
              episodeNumber: index + 1,
            );
          },
        ),
      ),
    );
  }
}
