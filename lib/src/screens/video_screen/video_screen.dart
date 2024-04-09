import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/providers/next_episode_provider/next_episode_provider.dart';
import 'package:kenny_tv/src/providers/selected_episode_provider/selected_episode_provider.dart';
import 'package:kenny_tv/src/screens/video_screen/video_player.dart';

/// Player and screen are seperated, because the episode provider must be watched
/// inside the build function, but the video must be initialized in a setState
/// function.
class VideoScreen extends ConsumerWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedEpisode = ref.watch(selectedEpisodeProvider);
    final nextEpisode = selectedEpisode != null
        ? ref.watch(NextEpisodeProvider(selectedEpisode))
        : null;

    return Scaffold(
      body: Center(
        child: selectedEpisode == null || nextEpisode == null
            ? const CircularProgressIndicator()
            : VideoPlayer(
                episode: selectedEpisode,
                nextEpisode: nextEpisode,
              ),
      ),
    );
  }
}
