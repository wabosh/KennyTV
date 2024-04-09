import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/providers/selected_episode_provider/selected_episode_provider.dart';

class Background extends ConsumerWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedEpisode = ref.watch(selectedEpisodeProvider);

    final imageSource = selectedEpisode?.media.image.url;

    // TODO: Add some fade animation
    return Container(
      decoration: imageSource != null
          ? BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageSource),
                fit: BoxFit.cover,
              ),
            )
          : null,
    );
  }
}
