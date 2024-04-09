import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/providers/next_episode_provider/next_episode_provider.dart';
import 'package:kenny_tv/src/providers/selected_episode_provider/selected_episode_provider.dart';
import 'package:kenny_tv/src/screens/video_screen/video_player_controls.dart';
import 'package:kenny_tv/src/utils/dio.dart';
import "package:video_player/video_player.dart" as FlutterVideoPlayer;
import "package:video_player_android/video_player_android.dart";

class VideoPlayer extends ConsumerStatefulWidget {
  final Episode episode;
  final Episode nextEpisode;

  const VideoPlayer({
    super.key,
    required this.episode,
    required this.nextEpisode,
  });

  @override
  ConsumerState<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends ConsumerState<VideoPlayer> {
  FlutterVideoPlayer.VideoPlayerController? _videoPlayerController;
  Timer? _switchControllerTimer;

  bool _errorWhileInit = false;

  void initVideoPlayer() async {
    // Wait for context to be mounted
    await Future.doWhile(() => !context.mounted);

    try {
      final episodeMediaInfo = await dio.get(
          "https://topaz.viacomcbs.digital/topaz/api/mgid:arc:episode:shared.southpark.gsa.de:${widget.episode.id}/mica.json?clientPlatform=desktop");
      final episodeMediaInfoJson = episodeMediaInfo.data;
      final String masterUrl = episodeMediaInfoJson["stitchedstream"]["source"];
      _videoPlayerController =
          FlutterVideoPlayer.VideoPlayerController.networkUrl(
        Uri.parse(masterUrl),
        formatHint: FlutterVideoPlayer.VideoFormat.hls,
      );

      await _videoPlayerController!.initialize();
      _videoPlayerController!.play();
    } catch (e) {
      setState(() {
        _errorWhileInit = true;
      });
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initVideoPlayer();
  }

  @override
  void dispose() {
    log("Disposing video player");
    _videoPlayerController?.dispose();
    _switchControllerTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_errorWhileInit) {
      Future.delayed(const Duration(seconds: 1), () {
        ref
            .read(selectedEpisodeProvider.notifier)
            .setEpisode(widget.nextEpisode);
        context.pushReplacement("/video_redirect");
      });
    }

    if (_videoPlayerController != null) {
      return Stack(
        children: [
          AspectRatio(
            aspectRatio: _videoPlayerController!.value.aspectRatio,
            child: FlutterVideoPlayer.VideoPlayer(_videoPlayerController!),
          ),
          VideoPlayerControls(
            controller: _videoPlayerController!,
            episode: widget.episode,
            nextEpisode: widget.nextEpisode,
          ),
        ],
      );
    }

    return const CircularProgressIndicator();
  }
}
