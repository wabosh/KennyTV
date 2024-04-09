import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/providers/selected_episode_provider/selected_episode_provider.dart';
import 'package:video_player/video_player.dart';

const double _controlInsidePadding = 25.0;

class VideoPlayerControls extends ConsumerStatefulWidget {
  final VideoPlayerController controller;
  final Episode? episode;
  final Episode? nextEpisode;

  const VideoPlayerControls({
    super.key,
    required this.controller,
    required this.episode,
    required this.nextEpisode,
  });

  @override
  ConsumerState<VideoPlayerControls> createState() =>
      _VideoPlayerControlsState();
}

class _VideoPlayerControlsState extends ConsumerState<VideoPlayerControls>
    with TickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();

  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeOut,
  );

  Timer? _hideTimer;

  double _videoProgress = 0.0;
  bool _playing = true;
  bool _canBePopped = false;
  bool _showSkipIntro = false;
  bool _showNextEpisode = false;
  Duration _totalDuration = Duration.zero;
  Duration _currentPosition = Duration.zero;

  void _showTemporarily({bool? disabled}) {
    if (disabled != null && disabled) {
      return;
    }

    if (_playing) {
      _animationController.animateTo(1.0);
    }

    _hideTimer?.cancel();

    _hideTimer = Timer(const Duration(seconds: 5), () {
      _animationController.animateTo(0.0);
    });
  }

  void _handleKeyEvent(KeyEvent event) {
    if (event is! KeyDownEvent) {
      return;
    }

    bool showTemporarilyDisabled = false;

    log(event.logicalKey.toString());
    if (_showSkipIntro && event.logicalKey == LogicalKeyboardKey.select) {
      widget.controller.seekTo(const Duration(seconds: 30));
      return;
    }

    switch (event.logicalKey) {
      case LogicalKeyboardKey.select ||
            LogicalKeyboardKey.mediaPlay ||
            LogicalKeyboardKey.mediaPlayPause:
        setState(() {
          if (_showNextEpisode) {
            _playNextEpisode(context);
            return;
          }

          if (_playing) {
            widget.controller.pause();
            _playing = false;
            _animationController.animateTo(1.0);
          } else {
            widget.controller.play();
            _playing = true;
            _animationController.animateTo(0.0);
          }
        });
        break;
      case LogicalKeyboardKey.arrowLeft:
        widget.controller.seekTo(
          Duration(
            seconds: widget.controller.value.position.inSeconds - 10,
          ),
        );
        break;
      case LogicalKeyboardKey.arrowRight:
        widget.controller.seekTo(
          Duration(
            seconds: widget.controller.value.position.inSeconds + 10,
          ),
        );
        break;
      case LogicalKeyboardKey.mediaRewind:
        widget.controller.seekTo(
          Duration(
            seconds: widget.controller.value.position.inSeconds - 30,
          ),
        );
        break;
      case LogicalKeyboardKey.mediaFastForward:
        widget.controller.seekTo(
          Duration(
            seconds: widget.controller.value.position.inSeconds + 30,
          ),
        );
        break;
      case LogicalKeyboardKey.goBack:
        _animationController.animateTo(0.0);
        showTemporarilyDisabled = true;
        break;
      case LogicalKeyboardKey.arrowUp:
        // Testing comes here
        widget.controller.seekTo(
            widget.controller.value.duration - const Duration(seconds: 60));
        break;
    }

    _showTemporarily(disabled: showTemporarilyDisabled);
  }

  void _playNextEpisode(BuildContext context) {
    if (widget.nextEpisode != null) {
      // Play next episode
      ref
          .read(selectedEpisodeProvider.notifier)
          .setEpisode(widget.nextEpisode!);
      context.pushReplacement("/video_redirect");
    }
  }

  @override
  void initState() {
    super.initState();
    _totalDuration = widget.controller.value.duration;

    // Show controls at the start
    _showTemporarily();

    widget.controller.addListener(() {
      setState(() {
        _currentPosition = widget.controller.value.position;
        _videoProgress = widget.controller.value.position.inMilliseconds /
            widget.controller.value.duration.inMilliseconds;

        int remainingSeconds = (_totalDuration - _currentPosition).inSeconds;

        if (remainingSeconds <= 30) {
          _showNextEpisode = true;

          if (remainingSeconds <= 0) {
            _playNextEpisode(context);
          }
        } else {
          _showNextEpisode = false;

          if (_currentPosition.inSeconds < 30) {
            _showSkipIntro = true;
          } else {
            _showSkipIntro = false;
          }
        }
      });
    });

    _animationController.addListener(() {
      log("Animation value: ${_animation.value}");
      if (_animation.value == 0.0) {
        setState(() {
          _canBePopped = true;
        });
      } else {
        setState(() {
          _canBePopped = false;
        });
      }
    });
  }

  @override
  void dispose() {
    log("Disposing VideoPlayerControls");
    _hideTimer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canBePopped,
      child: KeyboardListener(
        focusNode: _focusNode,
        autofocus: true,
        onKeyEvent: _handleKeyEvent,
        child: Stack(
          children: [
            FadeTransition(
              opacity: _animation,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(100, 0, 0, 0),
                      Colors.black,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(_controlInsidePadding),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(widget.episode!.meta.subHeader),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 35.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(25, 255, 255, 255),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(),
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: _controlInsidePadding),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    children: [
                                      Icon(
                                        _playing
                                            ? Icons.pause_rounded
                                            : Icons.play_arrow_rounded,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: _controlInsidePadding,
                                      ),
                                      Text(
                                        "${_currentPosition.inMinutes}:${_currentPosition.inSeconds.remainder(60).toString().padLeft(2, '0')} - ${_totalDuration.inMinutes}:${_totalDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: _controlInsidePadding,
                                      ),
                                      Expanded(
                                        child: LinearProgressIndicator(
                                          value: _videoProgress,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Skip Intro button
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(_controlInsidePadding),
                child: _showSkipIntro
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Skip Intro",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.fast_forward_rounded,
                              color: Theme.of(context).primaryColor,
                              size: 16.0,
                            ),
                          ],
                        ),
                      )
                    : null,
              ),
            ),

            // Next Episode button
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(_controlInsidePadding),
                child: _showNextEpisode && widget.nextEpisode != null
                    ? SizedBox(
                        width: 200.0,
                        height: 112.5,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      widget.nextEpisode!.media.image.url),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0.0, 0.75],
                                  colors: [
                                    Colors.transparent,
                                    Color.fromARGB(178, 0, 0, 0),
                                  ],
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.play_circle_rounded,
                                size: 32.0,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.nextEpisode!.meta.subHeader,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
