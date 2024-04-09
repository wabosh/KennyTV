import 'package:flutter/material.dart';
import "dart:developer";

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/providers/selected_episode_provider/selected_episode_provider.dart';

class EpisodeCard extends ConsumerStatefulWidget {
  final Episode episode;
  final int episodeNumber;

  const EpisodeCard({
    Key? key,
    required this.episode,
    required this.episodeNumber,
  }) : super(key: key);

  @override
  EpisodeCardState createState() => EpisodeCardState();
}

class EpisodeCardState extends ConsumerState<EpisodeCard> {
  final FocusNode focusNode = FocusNode();
  var focused = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      focused = focusNode.hasFocus;
    });

    focusNode.addListener(() {
      setState(() {
        focused = focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Change image url to use a smaller image (better for performance)
    var imageUri = Uri.parse(widget.episode.media.image.url);
    imageUri =
        imageUri.replace(queryParameters: {"w": "500", "quality": "0.5"});

    return KeyboardListener(
      focusNode: focusNode,
      autofocus: true,
      onKeyEvent: (event) {
        if (event is! KeyDownEvent) return;

        switch (event.logicalKey) {
          case LogicalKeyboardKey.select:
            ref
                .read(selectedEpisodeProvider.notifier)
                .setEpisode(widget.episode);
            // context.push("/video");
            break;
        }
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        semanticContainer: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: focused ? Colors.white : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: SizedBox(
          width: 200.0,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUri.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, focused ? 0.95 : 0.8],
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(focused ? 50 : 120, 0, 0, 0),
                    ],
                  ),
                ),
              ),
              // Not-selected
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    widget.episode.meta.subHeader,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
