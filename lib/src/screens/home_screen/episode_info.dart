import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/providers/selected_episode_provider/selected_episode_provider.dart';
import "package:kenny_tv/src/constants.dart" as constants;

class EpisodeInfo extends ConsumerStatefulWidget {
  const EpisodeInfo({super.key});

  @override
  ConsumerState<EpisodeInfo> createState() => _EpisodeInfoState();
}

class _EpisodeInfoState extends ConsumerState<EpisodeInfo> {
  final FocusNode focusNode = FocusNode();

  Episode? episode;

  void watchEpisode(BuildContext context) {
    context.push("/video");
  }

  @override
  void initState() {
    super.initState();

    focusNode.addListener(() {
      log(focusNode.hasFocus.toString());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedEpisode = ref.watch(selectedEpisodeProvider);

    if (episode == null || selectedEpisode != episode) {
      episode = selectedEpisode;
      focusNode.requestFocus();
    }

    if (selectedEpisode != null) {
      return Align(
        alignment: Alignment.bottomLeft,
        child: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            width: constraints.maxWidth / 2.0,
            child: Padding(
              padding: const EdgeInsets.only(left: constants.selectorPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Episode title
                  Text(
                    selectedEpisode.meta.subHeader,
                    style: const TextStyle(fontSize: 24.0),
                  ),
                  const SizedBox(height: 12.0),
                  // Description Text
                  Text(selectedEpisode.meta.description),
                  const SizedBox(height: 12.0),
                  // Play button
                  KeyboardListener(
                    focusNode: focusNode,
                    onKeyEvent: (event) {
                      if (event is! KeyDownEvent) return;

                      switch (event.logicalKey) {
                        case LogicalKeyboardKey.select:
                          watchEpisode(context);
                          break;
                      }
                    },
                    child: ElevatedButton.icon(
                      onPressed: () {
                        watchEpisode(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          focusNode.hasFocus
                              ? Colors.white
                              : Colors.grey.shade400,
                        ),
                      ),
                      icon: Icon(
                        Icons.play_arrow,
                        color: Theme.of(context).primaryColor,
                      ),
                      label: Text(
                        "Folge abspielen",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Container();
  }
}
