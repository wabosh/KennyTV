import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/models/season_model/season_model.dart';
import 'package:kenny_tv/src/providers/selected_season_provider/selected_season_provider.dart';

class SeasonCard extends ConsumerStatefulWidget {
  final Season season;
  final FocusNode? previousFocusNode;
  final FocusNode? nextFocusNode;

  const SeasonCard({
    Key? key,
    this.previousFocusNode,
    this.nextFocusNode,
    required this.season,
  }) : super(key: key);

  @override
  SeasonCardState createState() => SeasonCardState();
}

class SeasonCardState extends ConsumerState<SeasonCard> {
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
    final currentlySelected =
        ref.watch(selectedSeasonNotifierProvider).season == widget.season;

    return KeyboardListener(
      focusNode: focusNode,
      autofocus: true,
      onKeyEvent: (event) {
        if (event is! KeyDownEvent) return;

        switch (event.logicalKey) {
          case LogicalKeyboardKey.select:
            ref
                .read(selectedSeasonNotifierProvider.notifier)
                .selectSeason(widget.season.number);
            break;
        }
      },
      child: Card(
        color: currentlySelected ? Colors.white : Colors.transparent,
        semanticContainer: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: focused ? Colors.white : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Center(
            child: Text(
              "Staffel ${widget.season.number}",
              style: TextStyle(
                  color: currentlySelected
                      ? Theme.of(context).primaryColor
                      : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
