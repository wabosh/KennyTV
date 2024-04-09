import 'package:flutter/material.dart';
import 'package:kenny_tv/src/constants.dart' as constants;
import 'package:kenny_tv/src/models/season_model/season_model.dart';
import 'package:kenny_tv/src/screens/home_screen/season_card.dart';

class SeasonSelector extends StatefulWidget {
  final List<Season> seasons;

  const SeasonSelector({
    Key? key,
    required this.seasons,
  }) : super(key: key);

  @override
  State<SeasonSelector> createState() => _SeasonSelectorState();
}

class _SeasonSelectorState extends State<SeasonSelector> {
  List<Widget> buildSeasonsList() {
    return widget.seasons.map((season) {
      return SeasonCard(season: season);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        height: 65.0,
        child: ListView(
          padding: const EdgeInsets.only(
            left: constants.selectorPadding,
            right: constants.selectorPadding,
          ),
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          children: buildSeasonsList(),
        ),
      ),
    );
  }
}
